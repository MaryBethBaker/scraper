# get Ruby gems that are useful for scraping
require 'Httparty'
require 'nokogiri'
require 'open-uri'
require 'JSON'
require 'Pry'
# require 'csv'

# make a place to save scraped data
DATA_DIR = "committments"
Dir.mkdir(DATA_DIR) unless File.exists?(DATA_DIR)

#this is the place we're going to crawl and scrape data from (do I need lines 14/15)
#BASE_URL = 'http://pm.gc.ca'
#BASE_DIR = '/eng/ministerial-mandate-letters'

# find out what this line does
#HEADERS_HASH = {"User-Agent" => "Ruby/#{RUBY_VERSION}"}

# i think this opens the HTML page above
doc = Nokogiri::HTML(open("http://www.pm.gc.ca/eng/ministerial-mandate-letters"))
@doc.xpath("//H1")
@doc.xpath("//li")
 #What does the Nokogiri for rows = do?
 #rows = page.css('div.mw-content-ltr table.wikitable tr')


# Need to modify information here
rows[1..-2].each do |row|
  
  #looks for the css content and wiki content
  hrefs = row.css("td a").map{ |a| 
    a['href'] if a['href'] =~ /^\/wiki\// 
  }.compact.uniq
  
  #gets some html pages
  hrefs.each do |href|
    # remote_url = BASE_WIKIPEDIA_URL + href
    local_fname = "#{DATA_DIR}/#{File.basename(href)}.html"
    unless File.exists?(local_fname)
      puts "Fetching #{remote_url}..."
      begin
        # letter_content = open(remote_url, HEADERS_HASH).read
      rescue Exception=>e
        puts "Error: #{e}"
        sleep 5
      else
        # File.open(local_fname, 'w'){|file| file.write(wiki_content)}
        puts "\t...Success, saved to #{local_fname}"
      ensure
        sleep 1.0 + rand
      end  # done: begin/rescue
    end # done: unless File.exists?
    
  end # done: hrefs.each
end # done: rows.each
