# syntax=docker/dockerfile:1
FROM python:3
WORKDIR /biometric-attendance-sync-tool
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3", "erpnext_sync.py"]
