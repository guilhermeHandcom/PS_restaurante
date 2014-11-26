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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141125232434) do

  create_table "categorias", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comanda_produtos", force: true do |t|
    t.integer  "comanda_id"
    t.integer  "produto_id"
    t.integer  "quantidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comanda_produtos", ["comanda_id"], name: "index_comanda_produtos_on_comanda_id", using: :btree
  add_index "comanda_produtos", ["produto_id"], name: "index_comanda_produtos_on_produto_id", using: :btree

  create_table "comandas", force: true do |t|
    t.integer  "numero"
    t.integer  "mesa_id"
    t.float    "valor_total",    limit: 24
    t.integer  "funcionario_id"
    t.boolean  "aberto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comandas", ["funcionario_id"], name: "index_comandas_on_funcionario_id", using: :btree
  add_index "comandas", ["mesa_id"], name: "index_comandas_on_mesa_id", using: :btree

  create_table "funcionarios", force: true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "telefone"
    t.datetime "data_nascimento"
    t.string   "cargo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mesas", force: true do |t|
    t.integer  "numero"
    t.integer  "capacidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", force: true do |t|
    t.string   "nome"
    t.float    "valor",        limit: 24
    t.integer  "categoria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "produtos", ["categoria_id"], name: "index_produtos_on_categoria_id", using: :btree

end
