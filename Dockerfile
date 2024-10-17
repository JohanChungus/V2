FROM node:18-alpine3.18

USER 10001


RUN chown -R 10001:0 "/.npm

WORKDIR /app

RUN npm i ws express basic-auth
COPY . .

EXPOSE 7860

CMD ["node", "script.js"]
