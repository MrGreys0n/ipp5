# Используйте базовый образ Node.js
FROM node:14

# Установите рабочую директорию внутри контейнера
WORKDIR /usr/src/app

# Копируйте зависимости приложения (package.json и package-lock.json)
COPY package*.json ./

# Установите зависимости
RUN npm install

# Копируйте все файлы из текущего каталога в рабочую директорию в контейнере
COPY . .

# Откройте порт, на котором будет работать ваше приложение
EXPOSE 3000

# Команда для запуска вашего приложения
CMD [ "node", "index.js" ]
