# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120723150843) do

  create_table "caracteres", :force => true do |t|
    t.integer  "tecla_id"
    t.integer  "posicao_caractere_id"
    t.string   "simbolo",              :null => false
    t.string   "descricao"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "caracteres", ["posicao_caractere_id"], :name => "index_caracteres_on_posicao_caractere_id"
  add_index "caracteres", ["tecla_id"], :name => "index_caracteres_on_tecla_id"

  create_table "categoria_teclas", :force => true do |t|
    t.string   "nome",       :limit => 25, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "idiomas", :force => true do |t|
    t.string   "sigla",       :limit => 2, :null => false
    t.string   "nome",                     :null => false
    t.string   "nome_nativo",              :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "posicao_caracteres", :force => true do |t|
    t.string   "posicao",    :limit => 10, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "teclados", :force => true do |t|
    t.integer  "idioma_id"
    t.string   "padrao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "teclados", ["idioma_id"], :name => "index_teclados_on_idioma_id"

  create_table "teclas", :force => true do |t|
    t.integer  "teclado_id"
    t.integer  "categoria_tecla_id"
    t.string   "nome",               :null => false
    t.text     "descricao",          :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "teclas", ["categoria_tecla_id"], :name => "index_teclas_on_categoria_tecla_id"
  add_index "teclas", ["teclado_id"], :name => "index_teclas_on_teclado_id"

end
