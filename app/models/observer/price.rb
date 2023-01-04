# frozen_string_literal: true

module Observer
  ### A mock class to fetch a stock price (60 - 140).
  class Price
    def self.fetch(_symbol)
      rand(60..139)
    end
  end
end

# ticker = Observer::Ticker.new("MSFT")
# Observer::WarnLow.new(ticker, 80)
# Observer::WarnHigh.new(ticker, 120)
# ticker.run

# => Current price: 126
# => +++ 2017-11-02 12:09:36 +0900: Price above 120: 126
# => Current price: 102
# => Current price: 87
# => Current price: 121
