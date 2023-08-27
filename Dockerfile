FROM python:3.11.4-slim

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy the requirements file into the container at /app
COPY requirements.txt /app/

## Step 3:
# Install Packages
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Copy source code to working directory
COPY . app.py /app/

# Create ENV
ENV VERSION=$VERSION

## Step 5:
# Expose port 80
EXPOSE 8000

## Step 6:
# Run app.py at container launch
CMD ["python", "app.py"]
