class PersonaContacto < ActiveRecord::Base
   
   belongs_to :relacion_persona_contacto, :polymorphic => true
  
  
end
