class PagesController < ApplicationController
  before_filter :admin_user
  
  def show
    @page = Page.find(params[:id])
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      flash[:success] = "Pagina atualizada."
      redirect_to pages_path
    else
      flash[:error] = "Erro!"
      render "edit"
    end
  end

  def index
    @pages = Page.all
    @page = Page.new
  end

  def create
    @page = Page.create(params[:page])
    if @page.save
      flash[:success] = "Pagina criada com sucesso."
      redirect_to pages_path
    else
      flash[:error] = "Erro ao criar a pagina..."
      @pages = []
      render "index"
    end
  end

  def destroy
    Page.find(params[:id]).destroy
    flash[:success] = "Pagina removida..."
    redirect_to pages_path
  end

  private

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end
end
