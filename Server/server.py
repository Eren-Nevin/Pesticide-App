from time import time
from sanic import exceptions, html, text
import json as standard_json
from pathlib import Path
from sanic import Sanic, Request, json, response
from sanic_ext import Extend

from dataclasses import asdict
from model import AccountInfo

from account_manager import AccountManager

from utils import server_port, server_address

# TODO: Add auth using sjwt
# TODO: Add proper error handling


class Server:
    def __init__(self) -> None:
        self.app = Sanic("My_Server")
        self.app.config.CORS_ORIGINS = "*"
        self.app.config.LOCAL_CERT_CREATOR = 'trustme'
        # self.app.config['CORS_SUPPORTS_CREDENTIALS'] = True

        self.account_manager = AccountManager.getInstance()
        self.account_manager.read_database()

        # self.initialize_jwt()

        # self.app.add_route(self.get_goals, 'api/get_goals', ['GET'])
        # self.app.add_route(protected()(self.get_goals), 'api/get_goals', ['GET'])
        self.app.add_route(self.retrieve_user, 'api/retrieve_user', [
            'POST'])
        # self.app.add_route(self.save_user, 'api/save_user', [
        #     'POST'])
        self.app.add_route(self.signup, 'api/signup', ['POST'])
        self.app.add_route(self.login, 'api/login', ['POST'])
        self.app.add_route(self.remove_user, 'api/remove_user', ['POST'])
        self.app.add_route(self.save_app_state, 'api/save_state', ['POST'])
        self.app.add_route(self.save_app_report, 'api/save_report', ['POST'])
        self.app.add_route(self.load_app_state, 'api/load_state', ['POST'])
        self.app.add_route(self.show_report, 'api/show_report', ['GET'])
        self.app.add_route(self.show_privacy_policy, 'privacy_policy', ['GET'])

        Extend(self.app)

    # def initialize_jwt(self):
    #     self.sjwt = Initialize(self.app,
    #                            authenticate=self.authenticate,
    #                            retrieve_user=self.retrieve_user,

    async def signup(self, request: Request):
        payload = request.json.get('payload', None)
        if payload:
            signup_info = payload.get('signup_info', None)
            print(signup_info)
            new_id = self.account_manager.check_if_signup_possible(signup_info)
            if new_id:
                signup_info['uid'] = new_id
                signup_info['created_date'] = int(round(time() * 1000))
                account_info = AccountInfo.from_dict(signup_info)
                res = self.account_manager.save_account_info(account_info)
                if res:
                    return json(asdict(res))

        return None#                            )

    async def remove_user(self, request: Request):
        payload = request.json.get('payload', None)
        if payload:
            uid = payload.get('uid', None)
            if uid:
                res = self.account_manager.remove_account(uid)
                if res:
                    return json({'status': 'OK'})
                else:
                    return json({'status': 'FAIL'})

        return json({'status': 'Bad request'})


    async def login(self, request: Request):
        self.account_manager.read_database()
        payload = request.json.get('payload', None)
        try:
            login_info = payload.get('login_info', None)
            if login_info:
                sent_username = login_info.get('username', None)
                sent_password = login_info.get('password', None)
            # except Exception:
            #     raise exceptions.AuthenticationFailed("Malformed request")

            # if not sent_password or not sent_uid:
            #     raise exceptions.AuthenticationFailed('Missing uid or password')

                auth_res = self.account_manager.auth_user(username=sent_username,
                                                          password=sent_password)

                if not auth_res:
                    raise exceptions.AuthenticationFailed(
                        'User not found or wrong password')

                return json(asdict(auth_res))
        except Exception as e:
            print(e)
            return json({'status': 'Bad request'})

    async def retrieve_user(self, request: Request):
        self.account_manager.read_database()
        payload = request.json.get('payload', None)
        if payload:
            account_info =\
                self.account_manager.get_account_info(
                    int(payload.get('user_id')))
            return json(asdict(account_info))
        return None

    

    # async def save_user(self, request: Request):
    #     payload = request.json.get('payload', None)
    #     if payload:
    #         user_info_dict = payload.get('user_info', None)
    #         if user_info_dict:
    #             account_info = AccountInfo.from_dict(user_info_dict)
    #             res = self.account_manager.save_account_info(account_info)
    #             if res:
    #                 return json(asdict(res))
    #     return None

    async def save_app_state(self, request: Request):
        payload = request.json.get('payload', None)
        if payload:
            uid = payload.get('uid', None)
            app_state_dict = payload.get('app_state', None)
            if uid and app_state_dict:
                with open(f'./data/app_state_{uid}.json', 'w') as f:
                    standard_json.dump(app_state_dict, f)

        return json({'status': 'OK'})

    async def save_app_report(self, request: Request):
        print("SAVING REPORT")
        if uid := int(request.get_args().get('uid')):
            with open(Path(f'./data/report_{uid}.html'), 'wb') as file:
                file.write(request.body)
                print("WROTE")
            return json({'status': 'OK'})
        return json({'status': 'Failed'})

    async def load_app_state(self, request: Request):
        payload = request.json.get('payload', None)
        if payload:
            uid = payload.get('uid', None)
            with open(f'./data/app_state_{uid}.json') as f:
                app_state_dict = standard_json.load(f)
                return json({'status': 'OK', 'app_state': app_state_dict})
        return json({'status': 'Failed'})

    async def show_report(self, request: Request):
        if uid := int(request.get_args().get('uid')):
            with open(f'./data/report_{uid}.html') as f:
                return html(f.read())

        return html('<h1>Not Found</h1>')

    async def show_privacy_policy(self, request: Request):
        with open(f'./privacy.html') as f:
            return html(f.read())



    # @protected
    # async def get_goals(self, request: Request):
    #     print("Reading goals")
    #     uid = 0
    #     for query_arg in request.query_args:
    #         if query_arg[0] == 'login':
    #             uid = query_arg[1]
    #     if uid == 0:
    #         raise exceptions.NotFound(
    #             f"Could not find user"
    #         )
    #     print('uid')
    #     print(uid)
    #     try:
    #         with open(f'./data/{uid}.json') as file:
    #             raw_json = standard_json.load(file)
    #             return json({'success': True, 'goals': raw_json})
    #     except KeyError as e:
    #         raise exceptions.NotFound(
    #             f"Could not find user"
    #         )
server = Server()

if __name__ == '__main__':
    # server.app.run(server_address, server_port, auto_reload=True)
     server.app.run(server_address, server_port)
