FROM ubuntu:latest

WORKDIR /app

# Update sources.list with the correct codename
RUN sed -i 's/noble/noble-numbat/g' /etc/apt/sources.list

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-venv python3-pip

# Create and activate a virtual environment
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Copy requirements.txt first
COPY requirements.txt .

# Install dependencies in the virtual environment
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY devops .

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]

