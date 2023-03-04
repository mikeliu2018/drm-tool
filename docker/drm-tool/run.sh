#!/bin/sh

# 進入道專案目錄中
cd /usr/src/app

# 更新套件
npm update
# npm update --legacy-peer-deps
wait

# npx prisma db pull  
# npx prisma generate
wget https://github.com/shaka-project/shaka-packager/releases/download/v2.6.1/packager-linux-x64
mv packager-linux-x64 packager
chmod +x packager

# 重新 compile Nuxt 專案並啟動
# npm run build
# wait
# npm run start

# 上面也可以改為 
npm run dev
# npm run server