class HomeController < ApplicationController
  
  def index
    @foods = Food.all
    
    respond_to do |format|
      format.html
    end
  end
  
end
