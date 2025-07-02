#!/bin/bash
freqtrade trade \
  --logfile /freqtrade/user_data/logs/freqtrade_B.log \
  --db-url sqlite:////freqtrade/user_data/tradesv3_B.sqlite \
  --config /freqtrade/user_data/config_bot-B.json \
  --strategy SampleStrategy
