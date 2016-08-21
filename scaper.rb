# get Ruby gems that are useful for scraping
require 'mechanize'
# require 'Httparty'
# require 'nokogiri'
# require 'open-uri'
# require 'JSON'
# require 'Pry'
# require 'csv'

mechanize = Mechanize.new

# make a place to save scraped data

# visit the following HTML page
page = mechanize.get ('http://pm.gc.ca/eng/ministerial-mandate-letters')
link = page.link_with(text: 'mandate-letter')

page = link.click

puts page.uri


# go to each link in the body/main

# on each link find the following data
  
# put the titles and bullet points into a JSON file named above
# prints the title
    # puts page.title
# do this until all 30 pages have been scraped, then end the program.


