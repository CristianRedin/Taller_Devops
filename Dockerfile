# Imagen base de Python
FROM python:3.10-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar dependencias y app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Exponer el puerto (coincide con el app.py)
EXPOSE 8080

# Comando por defecto
CMD ["python", "app.py"]
