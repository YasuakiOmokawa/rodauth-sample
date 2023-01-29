# frozen_string_literal: true

require 'observer'

### Periodically fetch a stock price.
class Observer::Ticker
  include Observable

  def initialize(symbol)
    @symbol = symbol
  end

  def run
    last_price = nil
    loop do
      price = Price.fetch(@symbol)
      Rails.logger.debug { "Current price: #{price}\n" }
      if price != last_price
        changed # notify observers
        last_price = price
        notify_observers(Time.zone.now, price)
      end
      sleep 1
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
