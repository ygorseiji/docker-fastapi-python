# Use uma imagem base do Python
FROM python:3.11

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos de requisitos e a aplicação para o contêiner
COPY requirements.txt .
COPY main.py .

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Comando para rodar a aplicação
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
