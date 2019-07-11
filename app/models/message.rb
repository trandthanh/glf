class Message < MailForm::Base
  attribute :first_name, validate: true
  attribute :last_name, validate: true
  attribute :email, validate: true, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone, validate: true
  attribute :body, validate: true
  attribute :cv
  attribute :cl
  attribute :role
  attribute :recipient_email

  def headers
      {
        subject: "Formulaire de contact",
        to: "#{recipient_email}",
        from: %("#{first_name}" <#{email}>)
      }
  end
end
