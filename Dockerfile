# Use an official lightweight Python image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file first (for caching layers)
COPY requirements.txt .

# Install dependencies
# We use --upgrade to ensure we get the latest matching versions
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Copy the rest of your bot code
COPY . .

# Command to run the bot
CMD ["python", "main.py"]
