#!/bin/bash
set -e

echo "Pair list generating..."
freqtrade list-pairs --config /freqtrade/user_data/config.json > /freqtrade/user_data/pairs.txt

echo "Starting webserver on background..."
freqtrade webserver --config /freqtrade/user_data/config.json &

# echo "Starting trading bot..."
# freqtrade trade --config /freqtrade/user_data/config.json
