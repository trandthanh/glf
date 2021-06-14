class Message < MailForm::Base
  attribute :titre
  attribute :nom, validate: true
  attribute :prenom, validate: true
  attribute :email, validate: true, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :telephone, validate: true
  attribute :message, validate: true
  attribute :cv, attachment: true
  attribute :lm, attachment: true
  attribute :poste_recherche
  attribute :recipient_email
  attribute :nickname,  :captcha  => true

  def headers
      {
        subject: "Formulaire de contact",
        to: "#{recipient_email}",
        from: %("#{prenom} #{nom} <#{email}>")
      }
  end
end
