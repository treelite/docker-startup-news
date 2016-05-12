FROM node:4.4
ENV home /startup-news
WORKDIR ${home}
EXPOSE 18080

RUN git clone https://github.com/firede/startup-news.git ${home}
RUN npm install

ENTRYPOINT ["node", "app.js"]
