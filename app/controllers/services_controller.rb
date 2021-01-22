class ServicesController < ApplicationController

  def index
    @service = Service.all
  end

  def show
    @service = Service.find_by(name: params[:name])
  end
end
