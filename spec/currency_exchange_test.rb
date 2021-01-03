require 'currency_exchange'
require 'date'

#wanted to try out rspec, as only have some experience using minitest. 
describe 'Error Handling of rates' do
    it 'Raises an exception error if the date does not exist' do
        date = Date.new(2020, 9, 13)
        expect{CurrencyExchange.rate(date, "GBP", "USD")}.to raise_error("This date doesn't exist")
    end
    it 'Raises an exception error if currency not found on date' do
        date = Date.new(2018, 9, 13)
        expect{CurrencyExchange.rate(date, "EUR", "USD")}.to raise_error("There is no currency found on this date")
    end
    it 'Raises an exception error if the input type is invalid' do
        date = Date.new(2018, 9, 13)
        expect{CurrencyExchange.rate(date, [], [] )}.to raise_error("invalid input type")
    end
end


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

    it 'Gets correct rate of AUD to NZD on the date 11/12/2018' do
        date = Date.new(2018, 12, 11)
        correct_rate_on_date = 1.047407782988972
        expect(CurrencyExchange.rate(date, 'AUD', 'NZD')).to eq correct_rate_on_date
    end
    it 'Gets correct rate of NZD to AUD on the date 11/12/2018' do
        date = Date.new(2018, 12, 11)
        correct_rate_on_date = 0.9547379886239865
        expect(CurrencyExchange.rate(date, 'NZD', 'AUD')).to eq correct_rate_on_date
    end
end







