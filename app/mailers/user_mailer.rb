class UserMailer < ActionMailer::Base
  self.default :from => 'nailton.arg@gmail.com'               

  def signup_notification(user)  
    @user = user
    mail(:to => @user.email,
         :subject => "Usuario #{@user.name} criado com sucesso.")
    end
  end

  #def notification(inquiry)
  #  @inquiry = inquiry
  #  mail :reply_to => @inquiry.email, :subject => "New inquiry"
  #end