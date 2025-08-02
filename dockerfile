FROM node:24.4.1-alpine3.22

WORKDIR /app

COPY app/package.json ./
COPY app/yarn.lock ./

RUN yarn install

# 依存関係だけ入れた後、ソースをコピー
COPY app/ .

# ポートを明示
EXPOSE 5173

CMD ["yarn", "dev", "--host"]
