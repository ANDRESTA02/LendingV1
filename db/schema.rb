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

ActiveRecord::Schema.define(version: 20141204011111) do

  create_table "ambientes", force: true do |t|
    t.string   "nombre"
    t.string   "ubicacion"
    t.string   "codigo"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargos", force: true do |t|
    t.string   "roll"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elementos", force: true do |t|
    t.string   "nombre"
    t.string   "codigo_interno"
    t.string   "codigo_contable"
    t.text     "descripcion"
    t.integer  "tipo_elemento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "estado_id"
  end

  add_index "elementos", ["estado_id"], name: "index_elementos_on_estado_id"
  add_index "elementos", ["tipo_elemento_id"], name: "index_elementos_on_tipo_elemento_id"

  create_table "estados", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingresos", force: true do |t|
    t.string   "nombre"
    t.string   "documento"
    t.string   "ficha"
    t.integer  "elemento_id"
    t.string   "prestamo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingresos", ["elemento_id"], name: "index_ingresos_on_elemento_id"

  create_table "registros", force: true do |t|
    t.string   "documento"
    t.string   "nombre_completo"
    t.string   "numero_ficha"
    t.string   "confirmar_contrasena"
    t.string   "email"
    t.boolean  "genero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_elementos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "icono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre"
    t.integer  "telefono"
    t.integer  "celular"
    t.string   "dir"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
