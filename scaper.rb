# get Ruby gems that are useful for scraping
require 'Httparty'
require 'nokogiri'
require 'open-uri'
require 'JSON'
require 'Pry'
# require 'csv'

# make a place to save scraped data
#DATA_DIR = "committments"
#Dir.mkdir(DATA_DIR) unless File.exists?(DATA_DIR)

#this is the place we're going to crawl and scrape data from (do I need lines 14/15)
#BASE_URL = 'http://pm.gc.ca'
#BASE_DIR = '/eng/ministerial-mandate-letters'

# find out what this line does
#HEADERS_HASH = {"User-Agent" => "Ruby/#{RUBY_VERSION}"}

# i think this opens the HTML page above
doc = Nokogiri::HTML(open("http://www.pm.gc.ca/eng/ministerial-mandate-letters"))
@doc.xpath("//html:h1")
@doc.xpath("//html:li")
  
  #print out what we have?

    
