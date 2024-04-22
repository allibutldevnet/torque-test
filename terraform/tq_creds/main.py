from password_generator import PasswordGenerator
import os
import json

if __name__ == '__main__':
    pwo = PasswordGenerator()
    pwo.minlen = 12
    pwo.maxlen = 16
    pwo.minuchars = 3
    pwo.minlchars = 3
    pwo.minnumbers = 3
    pwo.minschars = 2
    pwo.excludeschars = '!@#$%^&*(){}[]<>+=,.?'

    pwd = pwo.generate()

    print(pwd)

    username = os.getenv('USERNAME').split('@')[0]
    if len(username) > 8:
        username = username[:8]

    with open('password_tmp', 'w') as f:
        f.write(json.dumps({"password": pwd, 'username':username}))