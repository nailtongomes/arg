class ArgumentsController < ApplicationController
before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def create
    @argument = current_user.arguments.build(params[:argument])
    if @argument.save
      flash[:success] = "Argument created!"
      redirect_to root_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @argument.destroy
    redirect_back_or root_path
  end

  private

    def correct_user
      @argument = current_user.arguments.find_by_id(params[:id])
      redirect_to root_path if @argument.nil?
    end
end