FROM fusuf/whatsasena:latest

RUN git clone https://github.com/wh173-d3v1l/stella /root/stella
WORKDIR /root/stella/
ENV TZ=America/New_York
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
