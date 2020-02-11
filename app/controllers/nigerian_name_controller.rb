class NigerianNameController < ApplicationController
  
  def get
    @getName = Faraday.get('https://www.nigerianelite.com/api/names/1') do |req|
    end
    @NigerianName = JSON.parse(@getName.body)
    render json: @NigerianName
  end



end
