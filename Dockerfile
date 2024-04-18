# Use uma imagem oficial do Python
FROM python:latest

# Configurações do ambiente Python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Diretório de trabalho
WORKDIR /app

# Copia e instala as dependências do projeto
COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copia o projeto
COPY . /app/

# Expõe a porta que o servidor Django irá escutar
EXPOSE 8000

# Comando para iniciar o servidor Django
CMD ["python", "myproject/manage.py", "runserver", "0.0.0.0:8000"]
