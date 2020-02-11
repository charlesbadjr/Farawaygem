class ApplicationController < ActionController::Base

def nigerian 
    # Nigerian Name API
    nameResponse = Faraday.get'https://www.nigerianelite.com/api/names/1' 
    parsedName = JSON.parse(nameResponse.body)
    nigerianArray = parsedName[0].to_a
    @welcomeName = nigerianArray[1][1]
    
end

end
