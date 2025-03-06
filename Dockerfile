# Используем официальный образ Python
FROM python:3.9-slim

# Устанавливаем зависимости
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Копируем код в контейнер
COPY . /app

# Указываем порт, на котором будет работать приложение
EXPOSE 8000

# Команда запуска приложения
CMD ["python", "wsgi.py"]