FROM node:18-alpine3.18

RUN chmod 777 -R /root

WORKDIR /app

RUN npm i ws express basic-auth
COPY . .

EXPOSE 7860

CMD ["node", "script.js"]
