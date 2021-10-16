#!/bin/bash

# Создание БД
sleep 10
airflow upgradedb
sleep 10

# Создание Юзера
#airflow users create -e EMAIL -f firstname -l lastname -p password -r Admin -u username
airflow create_user \
    --password admin \
    --role Admin \
    --username admin

# Запуск шедулера и вебсервера
airflow scheduler & airflow webserver
