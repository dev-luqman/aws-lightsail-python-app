from flask import Flask


from dotenv import load_dotenv
load_dotenv()

import os
VERSION = os.getenv("VERSION", "0")

app = Flask(__name__)

@app.route("/")
def home():

    html = f"""
    <div style="text-align:center; padding: 50px"> 
    <h2>AWS Lightsail Container Auto Deployment App </h2>
    <h3 style="color:#808080"> Version:1.{VERSION}</h3>
    </div>
    """
    return html


if __name__ == "__main__":
    # load pretrained model as clf
    app.run(host='0.0.0.0', port=8000, debug=True) 