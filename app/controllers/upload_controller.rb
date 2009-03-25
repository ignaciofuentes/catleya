class UploadController < ApplicationController

  def get 
    @imagen = Imagen.new 
  end 

  def save 
    @imagen = Imagen.new(params[:imagen]) 
    if @imagen.save 
      redirect_to(:action => 'show', :id => @imagen.id) 
    else 
      render(:action => :get) 
    end 
  end 

  def show 
  @imagen = Imagen.find(params[:id]) 
  end 

  def imagen
    @imagen = Imagen.find(params[:id]) 
    send_data(@imagen.data, 
    :filename => @imagen.nombre, 
    :type => @imagen.content_type, 
    :disposition => "inline")
  end

end
