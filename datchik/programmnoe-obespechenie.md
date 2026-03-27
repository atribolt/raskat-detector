---
order: 0.3
title: Программное обеспечение
---

Детектор работает за счет разработанного нами программного обеспечения (далее ПО). ПО состоит из двух частей:

1. [ПО захвата сигнала](./../programma-zakhvata-signalov/_index) - ядро системы

2. [WEB админ-панель](./../web-admin-panel/_index) - красивости и удобства

## Установка ПО

:::note 

ПО разрабатывается только под ОС Ubuntu 24.04 на базе которой собрана ОС Armbian

:::

:::lab 

Если вы приобретали детектор у нас, то ничего дополнительно делать не требуется. Данный раздел предназначен для пользователей, которые сами хотят собрать детектор и подключить к сети раСкат

:::

1. Установите на SD-карту ОС Armbian 24.04

2. Загрузитесь с SD-карты

3. Подключитесь к Orange Pi One любым удобным способом

4. Обновите кэш пакетов и установите зависимости:

   ```sh
   apt update && apt install -y ca-certificates curl
   ```

5. Добавьте GPG ключ репозитория:

   ```sh
   curl https://repository.thunder-raskat.ru/raskat.gpg -o /etc/apt/trusted.gpg.d/raskat.gpg
   ```

6. Добавьте репозиторий:

   ```sh
   echo 'deb https://repository.thunder-raskat.ru noble main' > /etc/apt/sources.list.d/raskat.list
   ```

7. Обновите кэш пакетов и установите ПО:

   ```sh
   apt update && apt install -y raskat-launcher detector-gpio
   ```

8. Запустите ПО:

   ```sh
   systemctl enable --now launcher detector
   ```

9. Зайдите в Админ панель из браузера: `http://<адрес одноплатника>`

   -  Аккаунт администратора: логин `admin`, пароль `admin`

   -  Аккаунт пользователя: логин `user`, пароль `user`