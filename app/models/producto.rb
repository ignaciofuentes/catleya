class Producto < ActiveRecord::Base
  
  has_many :actividads
  has_many :imagens, :as => :relacion_imagen, :dependent => :destroy
  
  has_and_belongs_to_many :proveedors
  
  validates_presence_of :nombre, :descripcion, :precio
  validates_numericality_of :precio
  validates_associated :proveedors
  validates_presence_of :proveedors
  
  def self.buscar_productos 
    find(:all, :order => "nombre") 
  end 
  
  
  
end
