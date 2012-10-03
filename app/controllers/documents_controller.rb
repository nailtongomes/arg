class DocumentsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: [:destroy, :edit, :update]
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
    if !@document.active && @document.user_id != current_user.id 
      flash[:error] = "Documento particular - Visualizavel apenas pelo proprietario."
      redirect_to documents_path
    end
  end

  def create
    @document = current_user.documents.build(params[:document])
    if @document.save
      flash[:success] = "Documento inserido com sucesso."
      redirect_to documents_path
    else
      flash[:error] = "Erro ao inserir o documento."
      redirect_to documents_path
    end
  end

  def new
    @document  = current_user.documents.build
  end

  def edit

  end

  def update
    if @document.update_attributes(params[:document])
      flash[:success] = "Documento atualizado."
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @document.destroy
    flash[:success] = "Documento removido."
    redirect__to documents_path
  end

  private

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "Por favor, autentifique-se."
    end
  end

  def correct_user
    @document = current_user.documents.find_by_id(params[:id])
    redirect_to documents_path if @document.nil?
  end

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end
end