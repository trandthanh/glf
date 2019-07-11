class Message < MailForm::Base
  attribute :first_name, validate: true
  attribute :last_name, validate: true
  attribute :email, validate: true, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone, validate: true
  attribute :body, validate: true
  attribute :cv
  attribute :cl
  attribute :role

  def headers
    if @gesloc
      {
        subject: "Formulaire de contact",
        to: "diane.jroussillon@gmail.com",
        from: "#{first_name}"
      }
    else
    {
        subject: "Formulaire de contact",
        to: "trandgthanh@gmail.com",
        from: "#{first_name}"
      }
    end
  end
end
