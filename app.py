from flask import Flask
import os
#import socket

app = Flask(__name__)

@app.route("/")
def hello():
    html = """Hello World!
    """
    #Hostname: {hostname}
    #return html.format(name=os.getenv("NAME", "world"), hostname=socket.gethostname())
    return html.format(name=os.getenv("NAME", "world"))

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8082)
