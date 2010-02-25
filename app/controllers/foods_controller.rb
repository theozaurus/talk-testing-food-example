class FoodsController < ApplicationController
  
  before_filter :authenticate
  
  def new
    @food = Food.new
    
    respond_to do |format|
      format.html
    end
  end
  
  def create
    @food = Food.new( params[:food] )
    @food.user = current_user
    
    respond_to do |format|
      if @food.save
        flash[:notice] = 'Thanks!'
        format.html { redirect_to root_path }
      else
        format.html { render :action => "new" }
      end
    end
    
  end
  
end
