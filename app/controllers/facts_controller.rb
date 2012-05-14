class FactsController < ApplicationController
before_filter :signed_in_user, only: [:create, :destroy]
before_filter :admin_user,     only: :index
  def index
    @facts = Fact.all
    @fact = Fact.new    
  end
  
  def create
    @fact = Fact.create(params[:fact])
    if @fact.save
      flash[:success] = "Caso criado"
      redirect_to root_path
    else      
      flash[:error] = "Erro ao criar o caso!"
      @facts = []
      render "index" 
    end
  end

  def destroy
    Fact.find(params[:id]).destroy
    flash[:success] = "Caso removido"
    redirect_back_or root_path
  end
  
  private
  
    def admin_user
    redirect_to(root_path) unless current_user.admin?
  end
end