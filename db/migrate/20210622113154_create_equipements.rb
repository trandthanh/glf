class CreateEquipements < ActiveRecord::Migration[5.2]
  def change
    create_table :equipements do |t|
      t.references :flat, foreign_key: true
      t.string :type_de_chauffage
      t.string :type_de_cuisine
      t.string :orientation_sud
      t.string :orientation_est
      t.string :orientation_ouest
      t.string :orientation_nord
      t.integer :nb_balcons
      t.integer :sf_balcon
      t.string :ascenseur
      t.string :cave
      t.integer :nb_de_parkings
      t.integer :nb_de_boxes
      t.string :gardien
      t.string :terrasse
      t.integer :nb_de_personnes
      t.string :type_de_rsidence
      t.string :situation
      t.integer :nb_de_lits_doubles
      t.integer :nb_de_lits_simples
      t.string :alarme
      t.string :cble_tv
      t.string :calme
      t.string :climatisation
      t.string :piscine
      t.string :amnagement_pour_handicaps
      t.string :animaux_accepts
      t.string :chemine
      t.string :conglateur
      t.string :four
      t.string :lavevaisselle
      t.string :microondes
      t.string :placards
      t.string :tlphone
      t.string :proche_lac
      t.string :proche_tennis
      t.string :proche_pistes_de_ski
      t.string :vue_dgage
      t.string :duplex
      t.string :mandat_en_exclusivit
      t.timestamps
    end
  end
end