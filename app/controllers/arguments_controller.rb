class ArgumentsController < ApplicationController
before_filter :signed_in_user, only: [:create, :destroy]
before_filter :correct_user,   only: :destroy
before_filter :admin_user,     only: :index  

  def index
    @arguments = Argument.search(params[:search]).paginate(:per_page => 30, :page => params[:page])
  end
  
  def create
    @argument = current_user.arguments.build(params[:argument])
    if @argument.save
      flash[:success] = "Argumento criado."
      redirect_to root_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @argument.destroy
    flash[:success] = "Argumento removido."
    redirect_back_or root_path
  end

  private

    def correct_user
      @argument = current_user.arguments.find_by_id(params[:id])
      redirect_to root_path if @argument.nil?
    end

    def admin_user
     redirect_to(root_path) unless current_user.admin?
   end
end
