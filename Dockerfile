# Use Python runtime (from parent Python image):
FROM python:2.7-slim
 
# Set working directory:
WORKDIR /app
 
# Copy current directory contents into the container at WORKDIR:
ADD . /app
 
# Set HTTP(S) proxy server:
ENV http_proxy http://host.docker.internal:3128
ENV https_proxy http://host.docker.internal:3128
 
# Install any needed packages specified in requirements.txt:
RUN pip install -r requirements.txt
 
#  Output from python script app.py
EXPOSE 80
 
# Run app.py when the container launches
CMD ["python", "app.py"]
