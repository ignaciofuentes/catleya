class Cliente < ActiveRecord::Base
  
  def self.buscar_clientes 
     find(:all, :order => "nombre") 
   end
  
end
