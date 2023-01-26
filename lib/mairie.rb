require 'nokogiri'
require 'rubygems'
require 'open-uri'


page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/"))

puts page.class

require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/"))
a = page.xpath('//a[contains(@href,"lienstext")]')

puts a