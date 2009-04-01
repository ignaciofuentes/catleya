class CreatePersonaContactos < ActiveRecord::Migration
  def self.up
    create_table :persona_contactos do |t|
      t.string :nombre
      t.string :apellido
      t.string :cargo
      t.string :email
      t.string :telefono_oficina
      t.string :telefono_celular

      t.timestamps
    end
  end

  def self.down
    drop_table :persona_contactos
  end
end
