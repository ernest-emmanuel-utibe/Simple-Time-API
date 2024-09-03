# from flask import Flask, jsonify
# import datetime

# app = Flask(__name__)

# @app.route('/', methods=['GET'])
# def get_current_time():
#     current_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
#     return jsonify({'current_time': current_time})

# if __name__ == '__main__':
#     app.run(debug=True)





from flask import Flask, jsonify
import datetime

app = Flask(__name__)

@app.route('/', methods=['GET'])
def get_current_time():
    current_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    return jsonify({'current_time': current_time})

if __name__ == '__main__':
    # Ensure the application listens on all network interfaces (0.0.0.0)
    app.run(host='0.0.0.0', port=5000, debug=True)
