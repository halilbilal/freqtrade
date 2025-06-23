from freqtrade.strategy.interface import IStrategy
import talib.abstract as ta

class RSIStrategy(IStrategy):
    timeframe = '5m'
    minimal_roi = {"0": 0.05, "10": 0.03, "30": 0}
    stoploss = -0.10

    def populate_indicators(self, dataframe, metadata):
        dataframe['rsi'] = ta.RSI(dataframe, timeperiod=14)
        return dataframe

    def populate_buy_trend(self, dataframe, metadata):
        dataframe.loc[
            (dataframe['rsi'] < 30),
            'buy'] = 1
        return dataframe

    def populate_sell_trend(self, dataframe, metadata):
        dataframe.loc[
            (dataframe['rsi'] > 70),
            'sell'] = 1
        return dataframe
