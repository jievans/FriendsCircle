class CirclesController < ApplicationController

  def index
    @circles = Circle.all
    render :index
  end

  def new
    @circle = Circle.new
    render :new
  end

  def show
    @circle = Circle.find_by_id(params[:id])
    render :show
  end

  def edit
    @circle = Circle.find_by_id(params[:id])
    render :edit
  end

  def update
    @circle = Circle.find_by_id(params[:id])
    @circle.update_attributes!(params[:circle])
    redirect_to circle_url(@circle)
  end

  def create
    Circle.create!(params[:circle])
    redirect_to circles_url
  end
end
