# # Use an official Python runtime as a parent image
# FROM python:3.9-slim

# # Set the working directory in the container
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY . /app

# # Install any needed packages specified in requirements.txt
# RUN pip install flask

# # Make port 5000 available to the world outside this container
# EXPOSE 5000

# # Define environment variable
# ENV NAME World

# # Run app.py when the container launches
# CMD ["python", "app.py"]



FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

# RUN pip==21.3.1 install --no-cache-dir -r requirements.txt
# RUN pip freeze --no-cache -r requirements.txt

RUN pip install -r requirements.txt

COPY . .

# Expose port 5000
EXPOSE 5000

CMD ["python", "app.py"]
