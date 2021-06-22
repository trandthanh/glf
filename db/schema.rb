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

ActiveRecord::Schema.define(version: 2021_06_22_113154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipements", force: :cascade do |t|
    t.bigint "flat_id"
    t.string "type_de_chauffage"
    t.string "type_de_cuisine"
    t.string "orientation_sud"
    t.string "orientation_est"
    t.string "orientation_ouest"
    t.string "orientation_nord"
    t.integer "nb_balcons"
    t.integer "sf_balcon"
    t.string "ascenseur"
    t.string "cave"
    t.integer "nb_de_parkings"
    t.integer "nb_de_boxes"
    t.string "gardien"
    t.string "terrasse"
    t.integer "nb_de_personnes"
    t.string "type_de_rsidence"
    t.string "situation"
    t.integer "nb_de_lits_doubles"
    t.integer "nb_de_lits_simples"
    t.string "alarme"
    t.string "cble_tv"
    t.string "calme"
    t.string "climatisation"
    t.string "piscine"
    t.string "amnagement_pour_handicaps"
    t.string "animaux_accepts"
    t.string "chemine"
    t.string "conglateur"
    t.string "four"
    t.string "lavevaisselle"
    t.string "microondes"
    t.string "placards"
    t.string "tlphone"
    t.string "proche_lac"
    t.string "proche_tennis"
    t.string "proche_pistes_de_ski"
    t.string "vue_dgage"
    t.string "duplex"
    t.string "mandat_en_exclusivit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_equipements_on_flat_id"
  end

  create_table "flats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "reference_agence_du_bien"
    t.string "type_dannonce"
    t.string "type_de_bien"
    t.string "cp"
    t.string "ville"
    t.text "descriptif"
    t.integer "surface"
    t.integer "surface_terrain"
    t.integer "nb_de_pieces"
    t.integer "nb_de_chambres"
    t.string "libelle"
    t.string "etage"
    t.string "nb_detages"
    t.string "meuble"
    t.string "annee_de_construction"
    t.integer "nb_de_salles_de_bain"
    t.integer "nb_de_salles_deau"
    t.integer "nb_de_wc"
    t.string "wc_separes"
    t.integer "prix__loyer"
    t.integer "prix_semaine__basse_saison"
    t.integer "prix_quinzaine__basse_saison"
    t.integer "prix_mois__basse_saison"
    t.integer "prix_semaine__haute_saison"
    t.integer "prix_quinzaine__haute_saison"
    t.integer "prix_mois__haute_saison"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "equipements", "flats"
end
