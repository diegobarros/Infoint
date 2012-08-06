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

ActiveRecord::Schema.define(:version => 20120806014852) do

  create_table "abstracao_cognicoes", :force => true do |t|
    t.integer  "nivel_id"
    t.integer  "categoria_abstracao_cognicao_id"
    t.string   "nome_atividade",                  :null => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "abstracao_cognicoes", ["categoria_abstracao_cognicao_id"], :name => "index_abstracao_cognicoes_on_categoria_abstracao_cognicao_id"
  add_index "abstracao_cognicoes", ["nivel_id"], :name => "index_abstracao_cognicoes_on_nivel_id"

  create_table "alternativas", :force => true do |t|
    t.integer  "pergunta_id"
    t.string   "letra",       :null => false
    t.text     "descricao",   :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "alternativas", ["pergunta_id"], :name => "index_alternativas_on_pergunta_id"

  create_table "caracteres", :force => true do |t|
    t.integer  "tecla_id"
    t.integer  "posicao_caractere_id"
    t.string   "nome"
    t.string   "simbolo",              :null => false
    t.text     "descricao"
    t.text     "codigo_html"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "caracteres", ["posicao_caractere_id"], :name => "index_caracteres_on_posicao_caractere_id"
  add_index "caracteres", ["tecla_id"], :name => "index_caracteres_on_tecla_id"

  create_table "categoria_abstracao_cognicoes", :force => true do |t|
    t.string   "nome",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categoria_teclas", :force => true do |t|
    t.string   "nome",       :limit => 25, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "controle_interfaces", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "idiomas", :force => true do |t|
    t.string   "sigla",       :limit => 2, :null => false
    t.string   "nome",                     :null => false
    t.string   "nome_nativo",              :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "instrucao_usos", :force => true do |t|
    t.integer  "controle_interface_id"
    t.text     "instrucao"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "instrucao_usos", ["controle_interface_id"], :name => "index_instrucao_usos_on_controle_interface_id"

  create_table "niveis", :force => true do |t|
    t.string   "nome",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "perguntas", :force => true do |t|
    t.integer  "abstracao_cognicao_id"
    t.text     "descricao",             :null => false
    t.text     "resposta",              :null => false
    t.text     "dica"
    t.text     "url_imagem"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "perguntas", ["abstracao_cognicao_id"], :name => "index_perguntas_on_abstracao_cognicao_id"

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
