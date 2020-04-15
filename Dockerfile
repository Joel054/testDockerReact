FROM node:12.16.2-alpine3.10 
# set working directory
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install 
RUN npm install react-scripts@3.4.1 -g 

# add app
COPY . ./

# start app
CMD ["npm", "start"]
# # Imagem de Origem
# FROM node:13-alpine
# # Diretório de trabalho(é onde a aplicação ficará dentro do container).
# WORKDIR /app
# # Adicionando `/app/node_modules/.bin` para o $PATH
# ENV PATH /app/node_modules/.bin:$PATH
# # Instalando dependências da aplicação e armazenando em cache.
# COPY package.json /app/package.json
# RUN npm install 
# RUN npm install react-scripts@3.3.1 
# # start app
# CMD ["npm", "start"] 