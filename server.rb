require 'sinatra'
require "sinatra/namespace"
require'mongoid'

require './Book'
require './BookSerializer'

Mongoid.load! "mongoid.config"

namespace '/api/v1' do

  before do
    content_type 'application/json'
  end

  get '/books' do
    books = Book.all

    [:title, :isbn, :author].each do |filter|
      books = books.send(filter, ptharams[filter]) if params[filter]
    end

    books.map { |book| BookSerializer.new(book) }.to_json
  end
end
