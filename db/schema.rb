# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090317033553) do

  create_table "actividads", :force => true do |t|
    t.integer  "producto_id", :null => false
    t.integer  "posicion"
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actividads", ["producto_id"], :name => "id_producto"

  create_table "clientes", :force => true do |t|
    t.string   "nombre"
    t.string   "rif"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventos", :force => true do |t|
    t.string   "nombre"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cliente_id", :null => false
  end

  add_index "eventos", ["cliente_id"], :name => "cliente_id"
  add_index "eventos", ["cliente_id"], :name => "id_cliente"

  create_table "imagens", :force => true do |t|
    t.string   "comentario"
    t.string   "nombre"
    t.string   "content_type"
    t.binary   "data",         :limit => 16777215
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "precio",      :limit => 10, :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proveedors", :force => true do |t|
    t.string   "nombre"
    t.string   "rif"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

end
