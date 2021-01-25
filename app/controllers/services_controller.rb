class ServicesController < ApplicationController

  def index
    @service = Service.all
  end

  def new
    @service = Service.new
  end

  def show
    @service = Service.find_by(name: params[:name])
  end

  def create
    @service = Service.new(service_params)
    if @service.save

      out_file = File.new("./app/views/shared/_#{@service.name}.html.erb", "w")
      out_file.puts("write your stuff here")
      out_file.close
      redirect_to services_path, notice: 'Le service a été enregistré.'
    else
      render :new, notice: 'Recommencer.'
    end
  end

  private
  def service_params
    params.require(:service).permit(:name, :description, :photo)
  end

end
