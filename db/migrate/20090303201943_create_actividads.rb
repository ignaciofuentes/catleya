class CreateActividads < ActiveRecord::Migration
  def self.up
    create_table :actividads do |t|
      t.integer :id_producto, :null => false, :options => 
      "CONSTRAINT fk_actividad_productos REFERENCES productos(id)"
      t.integer :posicion
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :actividads
  end
end
