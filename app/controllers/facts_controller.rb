class FactsController < ApplicationController
  before_filter :signed_in_user
  before_filter :moderator_user,     only: [:destroy, :update, :edit]
  def index
    @actives = Fact.active
    @facts = @actives.where("ini_term < ?", DateTime.now)
    @unactives = Fact.where("ini_term > ? OR ini_term IS NULL", DateTime.now)
    @fact = Fact.new
    @argument  = current_user.arguments.build
  end

  def show
    @fact  = Fact.find(params[:id])
    if not @fact.active
      redirect_to(facts_path) unless current_user.admin?
    end
    @argument  = current_user.arguments.build
    
    @arguments_in = Argument.where("fact_id = ? AND created_at < ?", @fact.id, @fact.fin_term)    
    @arguments_out = Argument.where("fact_id = ? AND created_at > ?", @fact.id, @fact.fin_term)
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

  def moderator_user
    redirect_to(facts_path) unless current_user.moderator? || current_user.admin?
  end

end