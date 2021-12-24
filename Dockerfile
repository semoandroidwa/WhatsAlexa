# We are just using WhatsAsena's Dockerfile
# Also the Base
# But We are not depending Asena for All
# Therefore WhatsAlexa is not a Fake bot of WhatsAsena
# © 𝗪𝗛𝗔𝗧𝗦 𝗔𝗟𝗘𝗫𝗔 𝗩4, 𝗠𝗔𝗗𝗘 𝗕𝗬 𝗦𝗘𝗠𝗢 𝗔𝗡𝗗𝗥𝗢𝗜𝗗 𝗪𝗔

FROM fusuf/whatsasena:latest

RUN git clone https://github.com/semoandroidwa/WhatsAlexa
WORKDIR /root/WhatsAlexa/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
