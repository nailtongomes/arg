class UserMailer < ActionMailer::Base
  self.default :from => 'nailton.arg@gmail.com'               

  def signup_notification(user)  
    mail(:to => user.email,
         :bcc => 'nailtongomes@ig.com.br',
         :subject => "Seu usuario #{user.name} foi criado.") do |format|
      format.html
      format.text
    end
  end

  #def notification(inquiry)
  #  @inquiry = inquiry
  #  mail :reply_to => @inquiry.email, :subject => "New inquiry"
  #end

end