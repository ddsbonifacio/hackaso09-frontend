# Imagem de Origem
FROM node:13-alpine
# Diretório de trabalho(é onde a aplicação ficará dentro do container).
WORKDIR /app
# Adicionando `/app/node_modules/.bin` para o $PATH
ENV PATH /app/node_modules/.bin:$PATH
ENV BACKEND_URL www.google.com
# Instalando dependências da aplicação e armazenando em cache.
COPY package.json /app/package.json
RUN npm install 

# Inicializa a aplicação
CMD ["npm", "start"]