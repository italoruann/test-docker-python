# 1. Use uma imagem base oficial do Python
FROM python:3.11-slim

# 2. Defina variáveis de ambiente (opcional, mas útil)
ENV PYTHONUNBUFFERED=1  # Garante que os logs do Python apareçam imediatamente
ENV APP_HOME=/app       # Define o diretório da aplicação

# 3. Crie e defina o diretório de trabalho
WORKDIR $APP_HOME

# 6. Copie o restante do código da sua aplicação para o diretório de trabalho
# Para um script simples, isso copiará o main.py e qualquer outro arquivo.
COPY . .

# Para um script Python simples:
CMD ["python", "main.py"]