class UserMailer < ActionMailer::Base
  #default to: "nailton.arg@gmail.com"

  def signup_notification(user)
    recipients "#{user.name} <#{user.email}>"
    from       "nailton.arg@gmail.com"
    subject    "Seu usuario #{user.name} foi criado."
    sent_on    Time.now
  end

  #def notification(inquiry)
  #  @inquiry = inquiry
  #  mail :reply_to => @inquiry.email, :subject => "New inquiry"
  #end

end