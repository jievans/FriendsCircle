class CirclesController < ApplicationController

  def index
    @circles = Circle.all
    render :index
  end

  def new
    render :new
  end

  def create
    Circle.create!(params[:circle])
    redirect_to circles_url
  end
end
