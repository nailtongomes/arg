class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @argument  = current_user.arguments.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @f = Fact.first
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
