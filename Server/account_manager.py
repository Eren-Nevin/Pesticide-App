from datetime import date, datetime
from dataclasses import dataclass
from pathlib import Path
from pprint import pprint
from typing import Any, Dict, List, Optional

from model import AccountInfo
import gspread

from utils import server_address, server_port

real_server_address = 'adinal.co:3004'

class AccountManager:

    _instance = None

    @classmethod
    def getInstance(cls):
        if not cls._instance:
            cls._instance = AccountManager()
            return cls._instance
        else:
            return cls._instance

    def __init__(self) -> None:
        # Its a dict with uid as key and AccountInfo as value
        print("Initializing Account Manager")
        self.user_info_dict: Dict[int, AccountInfo] = {}
        # self.gc = gspread.service_account(
        #     Path('./secrets/service_account.json'))
        self.gc = gspread.service_account(
            Path('./copefa-pesticide-Sheet-API-Key.json'))

        worksheet_name = 'Users'

        self.ws = self.gc.open('CoPeFa-Pesticide').worksheet(worksheet_name)
        print(self.read_database())

    def read_database(self):
        self.user_info_dict = {}
        for i, record in enumerate(self.ws.get_all_records()):
            # TODO: Make it work for year too
            if not record['email']:
                continue
            # creation_date = datetime.strptime(record['تاریخ ارسال اکانت'],
            #                                   '%m/%d'
            #                                   )
            # Make sure column names don't have whitespace or special characters
            # in them
            account = AccountInfo(
                uid=int(record['id']),
                name=record['name'],
                email=record['email'],
                username=record['username'],
                password=record['password'],
                created_date=int(record['created_date']),
                country=record['country'],
                # language=record['language'],
                education=record['education'],
                occupation=record['occupation']
            )

            self.user_info_dict[account.uid] = account
        return len(self.user_info_dict)

    def get_account_info(self, uid) -> Optional[AccountInfo]:
        return self.user_info_dict.get(int(uid), None)

    def check_if_signup_possible(self, signup_info_dict):
        self.read_database()
        username_check = True

        last_id = 0
        for uid, user_info in self.user_info_dict.items():
            if uid > last_id:
                last_id = uid
            if user_info.username == signup_info_dict['username']:
                username_check = False

        if username_check:
            return last_id + 1
        else:
            return 0

    def remove_account(self, uid: int):
        possible_user = self.ws.find(str(uid), in_column=1)
        if possible_user:
            user_row = possible_user.row
            self.ws.delete_rows(user_row);
            return True
        else:
            return False



    def save_account_info(self, user_info: AccountInfo):
        print("Saving account info into google sheet")
        self.read_database()
        last_row = len(self.user_info_dict) + 1
        print(last_row)

        self.user_info_dict[user_info.uid] = user_info

        possible_user_id = self.ws.find(str(user_info.uid), in_column=1)

        if possible_user_id:
            user_row = possible_user_id.row
        else:
            user_row = last_row + 1
            print(user_row)

        user_cell_row = self.ws.range(f'A{user_row}:J{user_row}')

        for cell in user_cell_row:
            if cell.col == 1:
                cell.value = user_info.uid
            if cell.col == 2:
                cell.value = user_info.name
            if cell.col == 3:
                cell.value = user_info.email
            if cell.col == 4:
                cell.value = user_info.username
            if cell.col == 5:
                cell.value = user_info.password
            if cell.col == 6:
                cell.value = user_info.created_date
            if cell.col == 7:
                cell.value = user_info.country
            if cell.col == 8:
                cell.value = user_info.education
            if cell.col == 9:
                cell.value = user_info.occupation
            if cell.col == 10:
                cell.value = self.get_report_url(user_info.uid)

        self.ws.update_cells(user_cell_row)
        return user_info

    # TODO: Add delete

    def auth_user(self, username: str, password):
        self.read_database()
        for uid, user_info in self.user_info_dict.items():
            if user_info.username == username and\
                    user_info.password == password:
                return user_info
        return None

    def get_report_url(self, uid):
        return f'https://{real_server_address}/api/show_report?uid={uid}'


if __name__ == '__main__':
    account_manager = AccountManager()

    account_manager.read_database()
