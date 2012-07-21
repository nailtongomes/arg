class SchemesController < ApplicationController
  before_filter :signed_in_user, only:   [:show]
  before_filter :admin_user,     except: [:show, :index]
  
  def show
    @scheme = Scheme.find(params[:id])
  end

  def edit
    @scheme = Scheme.find(params[:id])
  end

  def update
    @scheme = Scheme.find(params[:id])
    if @scheme.update_attributes(params[:scheme])
      flash[:success] = "Esquema atualizado."
      redirect_to schemes_path
    else
      flash[:error] = "Erro!"
      render "edit"
    end
  end

  def index
    @schemes = Scheme.search(params[:search]).paginate(:per_page => 30, :page => params[:page])
    @scheme = Scheme.new
  end

  def create
    @scheme = Scheme.create(params[:scheme])
    if @scheme.save
      flash[:success] = "Esquema criado com sucesso."
      redirect_to schemes_path
    else
      flash[:error] = "Erro ao criar o Esquema..."
      @schemes = []
      render "index"
    end
  end

  def destroy
    Scheme.find(params[:id]).destroy
    flash[:success] = "Esquema removido..."
    redirect_to schemes_path
  end

  private

  def admin_user
    redirect_to(schemes_path) unless current_user.admin?
  end
end
