#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER zabbix WITH PASSWORD 'ZabbixLab';
	CREATE DATABASE zabbix_db WITH OWNER zabbix ENCODING='UTF8';
EOSQL