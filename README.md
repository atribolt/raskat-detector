# Детектор молний *раСкат*

Добавляйтесь в группу телеграмм: https://t.me/raSkat_team


Компоненты:
- Плата `Orange Pi One`
- Образ ОС `Armbian` на базе `Ubuntu 24.04 (noble)`
- [Плата АЦП](#плата-ацп)
- Антенна `MiniWhip` с ФНЧ 100 кГц или ферритовая


# Плата АЦП

- Проект GERBER: [./adc/gerber/](./adc/gerber/)
- Проект P-CAD: [./adc/p-cad/](./adc/p-cad/)


# Программное обеспечение *раСкат*

Репозиторий DEB: https://repository.thunder-raskat.ru

- [Конфигурация ПО](./doc/configuration.md)

## Установка ПО
После запуска `OrangePi One`:
1. Подключитесь к одноплатнику люым удобным способом
2. Установите зависимости:
   ```sh
   apt update && apt install -y ca-certificates curl
   ```
3. Добавьте GPG ключ: 
   ```sh
   curl https://repository.thunder-raskat.ru/raskat.gpg -o /etc/apt/trusted.gpg.d/raskat.gpg
   ```
4. Добавьте репозиторий: 
   ```sh
   echo 'deb https://repository.thunder-raskat.ru noble main' > /etc/apt/sources.list.d/raskat.list
   ```
5. Установите ПО:
   ```sh
   apt install -y raskat-launcher detector-gpio
   ```
6. Запустите ПО:
   ```sh
   systemctl enable --now launcher detector
   ```
7. Зайдите в Админ панель из браузера: `http://<адрес одноплатника>`
   - Аккаунт администратора: логин `admin`, пароль `admin`
   - Аккаунт пользователя: логин `user`, пароль `user`
