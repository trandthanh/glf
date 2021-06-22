class AddColumnIdentifiantToFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :reference_agence_du_bien, :string
    add_column :flats, :type_dannonce, :string
    add_column :flats, :type_de_bien, :string
    add_column :flats, :cp, :string
    add_column :flats, :ville, :string
    add_column :flats, :descriptif, :text
    add_column :flats, :surface, :integer
    add_column :flats, :surface_terrain, :integer
    add_column :flats, :nb_de_pieces, :integer
    add_column :flats, :nb_de_chambres, :integer
    add_column :flats, :libelle, :string
    add_column :flats, :etage, :string
    add_column :flats, :nb_detages, :string
    add_column :flats, :meuble, :string
    add_column :flats, :annee_de_construction, :string
    add_column :flats, :nb_de_salles_de_bain, :integer
    add_column :flats, :nb_de_salles_deau, :integer
    add_column :flats, :nb_de_wc, :integer
    add_column :flats, :wc_separes, :string
    add_column :flats, :prix__loyer, :integer
    add_column :flats, :prix_semaine__basse_saison, :integer
    add_column :flats, :prix_quinzaine__basse_saison, :integer
    add_column :flats, :prix_mois__basse_saison, :integer
    add_column :flats, :prix_semaine__haute_saison, :integer
    add_column :flats, :prix_quinzaine__haute_saison, :integer
    add_column :flats, :prix_mois__haute_saison, :integer
  end
end
