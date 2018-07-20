require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  post '/results' do
    @query = params["keyword"]
    @book = bookFind(@query)
    return erb :results
  end
  
end

# https://www.googleapis.com/books/v1/volumes?q=${keyword}&key=AIzaSyC9XbOjIglj8HSgR3jVwvK6q49Z9RnFfrU
# url was in javascript!