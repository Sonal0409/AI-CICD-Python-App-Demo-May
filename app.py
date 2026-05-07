# Generate a python code that creates a simple web server using Flask that returns 
# "AI DevOps Pipeline Running"  
from flask import Flask
app = Flask(__name__)
@app.route('/')
def home():
    return "AI DevOps Pipeline Running"
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)  


