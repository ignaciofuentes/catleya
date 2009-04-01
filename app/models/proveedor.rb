class Proveedor < ActiveRecord::Base
  
  has_and_belongs_to_many :productos
  has_many :persona_contactos, :as => :relacion_persona_contacto, :dependent => :destroy
  
end
