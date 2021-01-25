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

      to_create_file = File.new("./app/views/shared/_#{@service.name}.html.erb", "w")
      to_create_file.puts("write your stuff here")
      to_create_file.close
      redirect_to services_path, notice: 'Le service a été enregistré.'
    else
      render :new, notice: 'Recommencer.'
    end
  end

  def destroy
    @service = Service.find(params[:id])

    @service.destroy
    to_delete_file = "./app/views/shared/_#{@service.name}.html.erb"
    File.delete(to_delete_file) if File.exist?(to_delete_file)
    redirect_to services_path
  end

  private
  def service_params
    params.require(:service).permit(:name, :description, :photo)
  end

end
