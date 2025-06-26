#!/bin/bash
# Pair listesini oluştur
freqtrade list-pairs --config /freqtrade/user_data/config.json > /freqtrade/user_data/pairs.txt

freqtrade webserver --config /freqtrade/user_data/config.json

# Statik dosya sun
# python3 -m http.server 8081 --directory /freqtrade/user_data &

# Botu başlat
freqtrade trade --config /freqtrade/user_data/config.json
