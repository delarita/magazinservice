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
      create_file(@service.name)
      redirect_to services_path, notice: 'Le service a été enregistré.'
    else
      render :new, notice: 'Recommencer.'
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    delete_file(@service.name)

    redirect_to services_path
  end

  private

  def create_file(file)

    # A METTRE AILLEUR !!
      insert = %{<h3><%= @service.name -%></h3>
<div>
  <p>Des choses sur #{file}</p>
  <p><%= @service.description %></p></br>
  <%= yield %>
  <% if @service.photo.attached? %>
  <%= cl_image_tag @service.photo.key, height: 300, width: 400, crop: :fill %>
  <% end %>
  <p>Des chose sous #{file}</p>
</div>
}
    # ########

      to_create_file = File.new("./app/views/shared/_#{file}.html.erb", "w")
      to_create_file.puts(insert)
      to_create_file.close
  end

  def delete_file(file)
    to_delete_file = "./app/views/shared/_#{file}.html.erb"
    File.delete(to_delete_file) if File.exist?(to_delete_file)
  end

  def service_params
    params.require(:service).permit(:name, :description, :photo)
  end

end
