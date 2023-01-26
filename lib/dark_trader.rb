require 'nokogiri'

require 'open-uri'


page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

puts page.class

a = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--hide-sm cmc-table__cell--sort-by__symbol"]').collect(&:text)

puts a


b = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]')

puts b.text

hash_final=Hash[a.zip(b)]
hash_final.each do |key,value|
    puts key + ':' + value
    
end 

