FROM python:3.11-slim-bullseye
RUN pip install --upgrade pip

WORKDIR /app
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .




CMD ["python3", "-m", "app"]

