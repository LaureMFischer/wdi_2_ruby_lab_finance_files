require 'yahoo_finance'
require 'pry'

# Your Code Here
puts 'Please enter a stock symbol: '
array = []
array.push(gets.chomp)

data = YahooFinance.quotes(array, [:last_trade_price])

symbol = data[0].symbol
price = data[0].ask

puts "#{symbol} value is: #{price}"

#File.open('quotes.csv', 'a+') { |file| file.write trade_price }

file = File.open('quotes.csv', 'a+')
file.puts "#{symbol} value is: #{price} at #{Time.now}"

