class CatleyaController < ApplicationController
  def index   
      @productos = Producto.buscar_productos.map {|u| [u.nombre, u.id] }  
  end
 
 


end
