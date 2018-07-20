require 'httparty'
require 'json'
require 'pp'
# also have to include it in the Gemfile; after doing 'gem install httparty' and 'gem install json'

def bookFind(search)
    
    url = "https://www.googleapis.com/books/v1/volumes?q=#{search}&key=AIzaSyC9XbOjIglj8HSgR3jVwvK6q49Z9RnFfrU"
    
    response = HTTParty.get(url)
    book_data = JSON.parse(response.body)
    
    # pp book_data["items"][2]  #pp is pretty print; to have ruby print out objects/structs in nice format
    
    # one_book = book_data["items"][2]["volumeInfo"]["title"]
    # return one_book
    
    return book_data
    
end

# puts bookFind("harry potter")