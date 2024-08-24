# Usar uma imagem base (pequena e segura)
FROM python:3.8-slim

# Criar, definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o arquivo de dependências
COPY dependencias.txt .

# Instalar as dependências
RUN pip install --no-cache-dir -r dependencias.txt

# Copiar todo o código da aplicação para o contêiner
COPY . .

# Definir o comando de execução mais um timeout maior
CMD ["gunicorn", "api:app", "--bind", "0.0.0.0:8000", "--timeout", "120"]

# Porta
EXPOSE 8000
