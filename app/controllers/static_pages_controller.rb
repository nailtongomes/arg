class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @argument  = current_user.arguments.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @f = Fact.active.first
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def top
    #hash com os melhores argumentos pelos usuários  
   
    @top_c = Rate.average(:stars, :conditions => "rateable_type = 'Argument' AND dimension = 'comunidade'", :group => [:rateable_id, :stars], :order => 'stars DESC, rateable_id')
    @top_c.delete_if {|k, v| v < 4 }
    @top_c = Hash[@top_c.sort_by { |k, v| v }.reverse!]

    #hash com os melhores argumentos pelos moderadores
    @top_m = Rate.average(:stars, :conditions => "rateable_type = 'Argument' AND dimension = 'moderador'", :group => [:rateable_id, :stars], :order => 'stars DESC, rateable_id')
    @top_m.delete_if {|k, v| v < 4 }
    @top_m = Hash[@top_m.sort_by { |k, v| v }.reverse!]
  end
end
