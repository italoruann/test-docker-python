# Use uma imagem base oficial do Python
FROM python:3.11-slim

# Defina variáveis de ambiente
ENV PYTHONUNBUFFERED=1
ENV APP_HOME=/app

# Crie e defina o diretório de trabalho
WORKDIR $APP_HOME

# Copie o código da aplicação
COPY . .

# Comando padrão ao rodar o contêiner
CMD ["python", "main.py"]
