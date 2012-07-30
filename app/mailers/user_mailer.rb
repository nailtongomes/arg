class UserMailer < ActionMailer::Base
  self.default :from => 'nailton.arg@gmail.com'               

  def signup_notification(user)  
    @user = user
    mail(:to => @user.email,
         :subject => "Usuario #{@user.name} criado com sucesso.")
  end
    
  def recover_notification(email,pass)  
    @user = User.where("email = ?", email).first
    @pass = pass
    mail(:to => @user.email,
         :bcc => "nailtongomes@ig.com.br",    
         :subject => "Recuperacao de senha - Arg.")
  end
  
  def save_arguments_notification(user)  
    @user = user
    mail(:to => @user.email,
         :subject => "Backup dos seus argumentos - #{@user.name}")
    #gerar pdf com os argumentos e enviar como anexo > depois
  end
  
  end

  #def notification(inquiry)
  #  @inquiry = inquiry
  #  mail :reply_to => @inquiry.email, :subject => "New inquiry"
  #end