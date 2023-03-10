# Use an official Python runtime as a parent image
FROM registry.access.redhat.com/ubi8/python-39:latest

# Set the working directory to /app
WORKDIR /app
RUN chmod 777 /app
USER 0
# Copy the current directory contents into the container at /app
ADD . /app


RUN chown -R 1001:0 ./
USER 1000
# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "/app/app.py"]
