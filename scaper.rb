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

# i think this opens the HTML page above
doc = Nokogiri::HTML(open("http://www.pm.gc.ca/eng/ministerial-mandate-letters"))

# go to each link in the body/main
@doc.xpath("//html:main")


# on each link find the following data
@doc.xpath("//html:h1")
@doc.xpath("//html:li")
  
  Heading = 'h1'
  BLOCKLI_ELT = 'li'
  
# put the titles and bullet points into a JSON file named above

# do this until all 30 pages have been scraped, then end the program.


