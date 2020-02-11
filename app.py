from flask import Flask
from flask import abort
import time
import requests
from flask import request

app = Flask(__name__)

@app.route('/')
def get_message():
    # response = requests.get('http://web2:3000/')
    # return 'fetched page and got response code {}'.format(response.status_code)
    status = request.args.get('status')
    sleep = request.args.get('sleep')
    print(status, sleep, flush=True)
    time.sleep(int(sleep))
    return status, int(status)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)
