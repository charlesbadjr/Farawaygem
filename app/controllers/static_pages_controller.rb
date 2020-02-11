class StaticPagesController < ApplicationController
  
  def home
    
# Quote of the Day API    
    #qod = Faraday.get 'http://quotes.rest/qod.json'
    quoteResponse = Faraday.get 'https://us-central1-loveapi.cloudfunctions.net/app/lovequotes/read/3'
    qod = JSON.parse(quoteResponse.body)
    @quote_of_the_day = qod['quote']
# Nigerian Name API
    nameResponse = Faraday.get'https://www.nigerianelite.com/api/names/1' 
    parsedName = JSON.parse(nameResponse.body)
    nigerianArray = parsedName[0].to_a
    @welcomeName = nigerianArray[1][1]
    print(@welcomeName)
     return :home

  end

  def about

  end

  def contact

  end


end
