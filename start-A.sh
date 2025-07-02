#!/bin/bash
freqtrade trade \
  --logfile /freqtrade/user_data/logs/freqtrade_A.log \
  --db-url sqlite:////freqtrade/user_data/tradesv3_A.sqlite \
  --config /freqtrade/user_data/config_bot-A.json \
  --strategy SampleStrategy
