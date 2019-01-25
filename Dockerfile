# 1o passo: definir imagem base
FROM node:10-alpine

# 1o passo: copiar arquivos para dentro do Container
ADD . /src

# 3o passo: definir onde os comandos serao executados
WORKDIR /src

# 4o passo: instalar dependencias globais do projet
RUN npm i -g typescript

# 5o passo: instalar as dependencias do projeto
RUN npm install

# 6o passo: compilar o projeto
RUN npm run build

# 7o passo: rodar o projeto (CMD -> pode ser substituido na execucao)
CMD npm start


