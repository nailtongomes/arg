class SandargsController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user,   only: :destroy
  def index
    @sandargs = current_user.sandargs
    @sandarg  = Sandarg.new
  end

  def show
    @sandarg  = current_user.sandargs.find(params[:id])
  end

  def create
    @sandarg = current_user.sandargs.build(params[:sandarg])
    if @sandarg.save
      flash[:success] = "Rascunho criado."
      render 'show'
    else
      flash[:error] = "Erro ao criar o rascunho."
      @sandargs = []
      render 'index'
    end
  end

  def edit
    @sandarg  = current_user.sandargs.find(params[:id])
  end

  def update
    @sandarg  = current_user.sandargs.find(params[:id])
    if @sandarg.update_attributes(params[:sandarg])
      flash[:success] = "Rascunho atualizado."
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @sandarg.destroy
    flash[:success] = "Rascunho removido."
    redirect_back_or sandargs_path
  end

  private

  def correct_user
    @sandarg = current_user.sandargs.find_by_id(params[:id])
    redirect_to sandargs_path if @sandarg.nil?
  end
end
