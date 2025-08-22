FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy everything from your local folder to container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Streamlit's default port
EXPOSE 8501

# Run the app using Streamlit
CMD ["streamlit", "run", "surah_rehman_app.py", "--server.address=0.0.0.0"]
