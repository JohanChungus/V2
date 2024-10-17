FROM node:latest

WORKDIR /home/choreouser
USER 10001
RUN apt update && apt upgrade -y
RUN npm i ws express basic-auth
COPY . .

EXPOSE 7860

CMD ["node", "script.js"]
