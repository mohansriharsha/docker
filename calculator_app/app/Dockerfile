# Choose Linux OS image
FROM ubuntu:18.04

# Update packages
RUN apt-get update -y
RUN apt-get -y install python3-pip

# Create a working directory
WORKDIR /app

# copy required files
COPY requirements.txt /app
COPY kwikapi_calc.py /app

# Install requirements
RUN pip3 install -r requirements.txt

# Run
ENTRYPOINT ["python3"]
CMD ["kwikapi_calc.py"]
