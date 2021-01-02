require 'currency_exchange'
require 'date'

#wanted to try out rspec, as only have some experience using minitest. 

describe 'Gets correct rates conversions successfully' do
    it 'Gets correct rate of USD to GBP on the date 13/09/2018' do
        date = Date.new(2018, 9, 13)
        correct_rate_on_date = 0.76592082616179
        expect(CurrencyExchange.rate(date, 'USD', 'GBP')).to eq correct_rate_on_date
    end

    it 'Gets correct rate of GBP to USD on the date 13/09/2018' do
        date = Date.new(2018, 9, 13)
        correct_rate_on_date = 1.3056179775280898
        expect(CurrencyExchange.rate(date, 'GBP', 'USD')).to eq correct_rate_on_date
    end
end



