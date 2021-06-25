class UpdateEquipement < ApplicationService

  def initialize(equipement, row)
    @equipement = equipement
    @row = row
  end

  def call
    @equipement.update_attributes(
      type_de_chauffage: convert_heating(@row[:type_de_chauffage]),
      type_de_cuisine: convert_kitchen(@row[:type_de_cuisine]),
      orientation_sud: @row[:orientation_sud],
      orientation_est: @row[:orientation_est],
      orientation_ouest: @row[:orientation_ouest],
      orientation_nord: @row[:orientation_nord],
      nb_balcons: @row[:nb_balcons].to_i,
      sf_balcon: @row[:sf_balcon].to_i,
      ascenseur: @row[:ascenseur],
      cave: @row[:cave],
      nb_de_parkings: @row[:nb_de_parkings].to_i,
      nb_de_boxes: @row[:nb_de_boxes].to_i,
      gardien: @row[:gardien],
      terrasse: @row[:terrasse],
      nb_de_personnes: @row[:nb_de_personnes].to_i,
      type_de_rsidence: @row[:type_de_rsidence],
      situation: @row[:situation],
      nb_de_lits_doubles: @row[:nb_de_lits_doubles].to_i,
      nb_de_lits_simples: @row[:nb_de_lits_simples].to_i,
      alarme: @row[:alarme],
      cble_tv: @row[:cble_tv],
      calme: @row[:calme],
      climatisation: @row[:climatisation],
      piscine: @row[:piscine],
      amnagement_pour_handicaps: @row[:amnagement_pour_handicaps],
      animaux_accepts: @row[:animaux_accepts],
      chemine: @row[:chemine],
      conglateur: @row[:conglateur],
      four: @row[:four],
      lavevaisselle: @row[:lavevaisselle],
      microondes: @row[:microondes],
      placards: @row[:placards],
      tlphone: @row[:tlphone],
      proche_lac: @row[:proche_lac],
      proche_tennis: @row[:proche_tennis],
      proche_pistes_de_ski: @row[:proche_pistes_de_ski],
      vue_dgage: @row[:vue_dgage],
      duplex: @row[:duplex],
      mandat_en_exclusivit: @row[:mandat_en_exclusivit]
    )
    @equipement.save!
  end

  def convert_heating(num)
    {
      "128" => "radiateur",
      "256" => "sol",
      "384" => "mixte",
      "512" => "gaz",
      "640" => "gaz radiateur",
      "768" => "gaz sol",
      "896" => "gaz mixte",
      "1024" => "fuel",
      "1152" => "fuel radiateur",
      "1280" => "fuel sol",
      "1408" => "fuel mixte",
      "2048" => "électrique",
      "2176" => "électrique radiateur",
      "2304" => "électrique sol",
      "2432" => "électrique mixte",
      "4096" => "collectif",
      "4224" => "collectif radiateur",
      "4352" => "collectif sol",
      "4480" => "collectif mixte",
      "4608" => "collectif gaz",
      "4736" => "collectif gaz radiateur",
      "4864" => "collectif gaz sol",
      "4992" => "collectif gaz mixte",
      "5120" => "collectif fuel",
      "5248" => "collectif fuel radiateur",
      "5376" => "collectif fuel sol",
      "5504" => "collectif fuel mixte",
      "6144" => "collectif électrique",
      "6272" => "collectif électrique radiateur",
      "6400" => "collectif électrique sol",
      "6528" => "collectif électrique mixte",
      "8192" => "individuel",
      "8320" => "individuel radiateur",
      "8448" => "individuel sol",
      "8576" => "individuel mixte",
      "8704" => "individuel gaz",
      "8832" => "individuel gaz radiateur",
      "8960" => "individuel gaz sol",
      "9088" => "individuel gaz mixte",
      "9216" => "individuel fuel",
      "9344" => "individuel fuel radiateur",
      "9472" => "individuel fuel sol",
      "9600" => "individuel fuel mixte",
      "10240" => "individuel électrique",
      "10368" => "individuel électrique radiateur",
      "10496" => "individuel électrique sol",
      "10624" => "individuel électrique mixte",
      "16384" => "climatisation réversible",
      "20480" => "climatisation réversible centrale",
      "24576" => "climatisation réversible individuelle",
      "" => ""
    }[num]
  end

  def convert_kitchen(num)
    {
      "1" => "aucune",
      "2" => "américaine",
      "3" => "séparée",
      "4" => "industrielle",
      "5" => "coin cuisine",
      "6" => "américaine équipée",
      "7" => "séparée équipée",
      "8" => "coin cuisine équipé",
      "9" => "équipée",
      "" => ""
    }[num]
  end
end