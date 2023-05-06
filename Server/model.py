from dataclasses import dataclass

# These are the data we store on out own backend


@dataclass()
class AccountInfo:

    uid: int
    name: str
    email: str
    username: str
    password: str
    created_date: int
    country: str
    # language: str
    education: str
    occupation: str

    def to_dict(self):
        return {
            'uid': self.uid,
            'name': self.name,
            'email': self.email,
            'username': self.username,
            'password': self.password,
            'created_date': self.created_date,
            'country': self.country,
            # 'language': self.language,
            'education': self.education,
            'occupation': self.occupation,
        }

    @staticmethod
    def from_dict(info_dict):
        return AccountInfo(info_dict['uid'], info_dict['name'],
                           email=info_dict['email'], username=info_dict['username'],
                           password=info_dict['password'], created_date=info_dict['created_date'],
                           country=info_dict['country'],
                           # language=info_dict['language'], 
                           education=info_dict['education'],
                           occupation=info_dict['occupation'])
