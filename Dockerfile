FROM python:3.9-slim

WORKDIR /app

# Copy only requirements first (better caching)
COPY app/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code (including templates/)
COPY app/ /app

EXPOSE 3000

CMD ["python", "app.py"]