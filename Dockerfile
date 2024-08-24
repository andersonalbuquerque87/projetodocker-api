# Usar uma imagem base pequena e segura
FROM python:3.8-slim

# Criar e definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o arquivo de requisitos
COPY dependencias.txt .

# Instalar as dependências
RUN pip install --no-cache-dir -r dependencias.txt

# Copiar todo o código da aplicação para o contêiner
COPY . .

# Definir o comando de execução
CMD ["gunicorn", "api:app", "--bind", "0.0.0.0:8000", "--timeout", "120"]

# Expor a porta necessária
EXPOSE 8000
