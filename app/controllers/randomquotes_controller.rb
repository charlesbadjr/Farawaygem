class RandomquotesController < ApplicationController
  
  def get
    quoteoftheday = Faraday.get 'http://quotes.rest/qod.json'
    quote_result = JSON.parse(quoteoftheday.body)
    @quote_of_the_day = quote_result['contents.quotes.quote']
    
  end

  def post

  end

  def show
    response = Faraday.get 'http://quotes.rest/qod.json'
    parse = JSON.parse(response.body)
    quotes = parse["contents"]["quotes"][0].to_a
     
    
    @quote_of_the_day = quotes[0][1]
    @author_QOTD = quotes[2][1]
    @date_QOTD = quotes[5][1]

  end


end
