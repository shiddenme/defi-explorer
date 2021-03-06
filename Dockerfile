FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY lerna.json ./

COPY ./packages/bitcore-build/package.json ./packages/bitcore-build/package.json
RUN true
COPY ./packages/bitcore-mnemonic/package.json ./packages/bitcore-mnemonic/package.json
RUN true
COPY ./packages/bitcore-lib/package.json ./packages/bitcore-lib/package.json
RUN true
COPY ./packages/bitcore-lib-cash/package.json ./packages/bitcore-lib-cash/package.json
RUN true
COPY ./packages/bitcore-lib-dfi/package.json ./packages/bitcore-lib-dfi/package.json
RUN true
COPY ./packages/bitcore-p2p/package.json ./packages/bitcore-p2p/package.json
RUN true
COPY ./packages/bitcore-p2p-cash/package.json ./packages/bitcore-p2p-cash/package.json
RUN true
COPY ./packages/bitcore-p2p-dfi/package.json ./packages/bitcore-p2p-dfi/package.json
RUN true
COPY ./packages/bitcore-wallet-client/package.json ./packages/bitcore-wallet-client/package.json
RUN true
COPY ./packages/bitcore-client/package.json ./packages/bitcore-client/package.json
RUN true
COPY ./packages/bitcore-wallet/package.json ./packages/bitcore-wallet/package.json
RUN true
COPY ./packages/bitcore-wallet-client/package.json ./packages/bitcore-wallet-client/package.json
RUN true
COPY ./packages/bitcore-wallet-service/package.json ./packages/bitcore-wallet-service/package.json
RUN true
COPY ./packages/bitcore-node/package.json ./packages/bitcore-node/package.json
RUN true
#COPY ./packages/insight/package.json ./packages/insight/package.json
COPY ./packages/insight-previous/package.json ./packages/insight-previous/package.json
RUN ./node_modules/.bin/lerna bootstrap --concurrency=1

COPY . .
#EXPOSE 3000
#EXPOSE 8100
#CMD ["./node_modules/.bin/lerna", "run", "start"]
#CMD ["npm", "--prefix=./packages/bitcore-node", "start"]
#CMD ["npm", "--prefix=./packages/insight-previous", "start"]
#CMD ["npm", "run", "node"]
#CMD ["npm", "run", "insight-previous"]
