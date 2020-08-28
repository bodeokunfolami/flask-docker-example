# Import Python runtime and set up working directory
FROM python:3.7-slim
WORKDIR /app
ADD . /app

# Install any necessary dependencies
RUN pip install -r requirements.txt

# Open port for serving the web page
ENV PORT 5000

# Run app.py when the container launches 
# CMD ["python", "app.py"]
CMD exec gunicorn --bind 0.0.0.0:$PORT --workers 1 --threads 8 --timeout 0 wsgi:app
