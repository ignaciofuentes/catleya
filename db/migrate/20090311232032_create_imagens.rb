class CreateImagens < ActiveRecord::Migration
  def self.up
    create_table :imagens do |t|
      t.string :comentario
      t.string :nombre
      t.string :content_type
      t.binary :data, :limit => 1.megabyte

      t.timestamps
    end
  end

  def self.down
    drop_table :imagens
  end
end
