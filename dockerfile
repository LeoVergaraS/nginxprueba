FROM python:3.11-slim

EXPOSE 5050
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5050", "app:app"]