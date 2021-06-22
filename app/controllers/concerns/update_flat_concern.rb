module UpdateFlatConcern
  def update_flat_attributes(flat, row)
    flat.update_attributes(
      type_dannonce: row[:type_dannonce],
      type_de_bien: row[:type_de_bien],
      cp: row[:cp],
      ville: row[:ville],
      descriptif: row[:descriptif],
      surface: row[:surface].to_i,
      surface_terrain: row[:surface_terrain].to_i,
      nb_de_pieces: row[:nb_de_pices].to_i,
      nb_de_chambres: row[:nb_de_chambres].to_i,
      libelle: row[:libell],
      etage: row[:etage],
      nb_detages: row[:nb_dtages],
      meuble: row[:meubl],
      annee_de_construction: row[:anne_de_construction],
      nb_de_salles_de_bain: row[:nb_de_salles_de_bain].to_i,
      nb_de_salles_deau: row[:nb_de_salles_deau].to_i,
      nb_de_wc: row[:nb_de_wc].to_i,
      wc_separes: row[:wc_spars],
      prix__loyer: row[:prix__loyer].to_i,
      prix_semaine__basse_saison: row[:prix_semaine__basse_saison].to_i,
      prix_quinzaine__basse_saison: row[:prix_quinzaine__basse_saison].to_i,
      prix_mois__basse_saison: row[:prix_mois__basse_saison].to_i,
      prix_semaine__basse_saison: row[:prix_semaine__basse_saison].to_i,
      prix_quinzaine__basse_saison: row[:prix_quinzaine__basse_saison].to_i,
      prix_mois__basse_saison: row[:prix_mois__basse_saison].to_i
    )
    i = 1
    15.times do 
      flat.photos << row["photo_#{i}".to_sym] if row["photo_#{i}".to_sym] != ""
      i += 1
    end
    flat.save!
  end
end