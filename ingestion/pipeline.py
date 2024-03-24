import yfinance as yf
import pandas as pd


data = yf.download(['GOOG','META'], period='1mo')






if __name__ == "__main__":
    main()