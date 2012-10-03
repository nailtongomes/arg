class MsgsController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user,   only: [:destroy]

  def index
    @msgs = Msg.where("id_receiver = ? OR user_id = ?", current_user.id, current_user.id)    
    @msg  = current_user.msgs.build
    
    @users = User.all
  end

  def show
    @msg = Msg.find(params[:id])
    if (@msg.user_id != current_user.id) && (@msg.id_receiver != current_user.id)
      flash[:error] = "Mensagem protegida."      
      redirect_to msgs_path
    end 
    @new_msg  = current_user.msgs.build
    @users = User.all
  end 

  def create
    @msg = current_user.msgs.build(params[:msg])
    if @msg.save
      flash[:success] = "Mensagem enviada."
      redirect_to msgs_path
    else
      flash[:error] = "Erro ao enviar a mensagem."
      redirect_to msgs_path
    end
  end

  def destroy
    @msg.destroy
    flash[:success] = "Mensagem removida."
    redirect_back_or msgs_path
  end
  
  def clear
    Msg.delete_all
    flash[:success] = "Mensagens removidas."
    redirect_to msgs_path
  end

  private

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "Por favor, autentifique-se."
    end
  end

  def correct_user
    @msg = Msg.find_by_id(params[:id])      
      redirect_to msgs_path if (@msg.nil? || @msg.id_receiver != current_user.id && @msg.user_id != current_user.id)              
  end

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end
end