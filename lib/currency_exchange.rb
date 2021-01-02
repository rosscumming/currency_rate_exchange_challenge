require 'json'
require 'date'

module CurrencyExchange
  
  @rates_file = File.read('./data/rates.json')
  @rates_obj = JSON.parse(@rates_file)

  # p @rates_obj.keys

  # Return the exchange rate between from_currency and to_currency on date as a float.
  # Raises an exception if unable to calculate requested rate.
  # Raises an exception if there is no rate for the date provided.
  def self.rate(date, from_currency, to_currency)
    # TODO: calculate and return rate
    date = date.strftime('%Y-%m-%d')
    @rates_obj[date][to_currency] / @rates_obj[date][from_currency]
  end

end
