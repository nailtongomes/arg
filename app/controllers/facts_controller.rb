class FactsController < ApplicationController
before_filter :signed_in_user, only: [:create]
before_filter :admin_user,     only: [:destroy, :update, :edit]
  def index
    @facts = Fact.active
    @unactives = Fact.unactive
    @fact = Fact.new    
  end

  def edit
    @fact  = Fact.find(params[:id])
  end

  def update
    @fact = Fact.find(params[:id])
    if @fact.update_attributes(params[:fact])
      flash[:success] = "Caso atualizado."
      redirect_to facts_path     
    else
      flash[:error] = "Erro!"
      @facts = []
      @unactives = []
      render "index" 
    end
  end
  
  def create
    @fact = Fact.create(params[:fact])
    if @fact.save
      flash[:success] = "Caso criado com sucesso e submetido aos administradores."
      redirect_to facts_path
    else      
      flash[:error] = "Erro ao criar o caso..."
      @facts = []
      @unactives = []
      render "index" 
    end
  end

  def destroy
    Fact.find(params[:id]).destroy
    flash[:success] = "Caso removido..."
    redirect_to facts_path
  end
  
    private
  def admin_user
    redirect_to(facts_path) unless current_user.admin?
  end
  
end