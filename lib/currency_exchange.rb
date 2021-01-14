require 'json'
require 'date'

module CurrencyExchange
  
  @rates_file = File.read('./data/rates.json')
  @rates_obj = JSON.parse(@rates_file)

  # p @rates_obj
  def self.rate(date, from_currency, to_currency)
    date = date.strftime('%Y-%m-%d')
    
    raise "This date doesn't exist" if !@rates_obj[date] 
    raise "invalid input type" if !to_currency.kind_of? String 
    raise "invalid input type" if !from_currency.kind_of? String 
    raise "There is no currency found on this date" if !@rates_obj[date][to_currency] || !@rates_obj[date][from_currency]

    @rates_obj[date][to_currency] / @rates_obj[date][from_currency]
  end

end
