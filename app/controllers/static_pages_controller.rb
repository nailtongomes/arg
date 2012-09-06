class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @argument  = current_user.arguments.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @f = Fact.where("ini_term < ? AND fin_term > ? AND active = ?", DateTime.now, DateTime.now, true).last
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def backup
    if signed_in? && current_user.admin?
     UserMailer.backup_notification.deliver        
     flash[:success] = "Backup realizado."
     redirect_to root_path
    end
  end

  def recover
    if (params[:email]).present?
      @u = User.where("email = ?", (params[:email]).downcase).first
      if @u.present?
        pass = (0...6).map{ ('a'..'z').to_a[rand(26)] }.join
        @u.update_attribute(:password, pass)
        @u.update_attribute(:password_confirmation, pass)
        UserMailer.recover_notification(@u.email, pass).deliver        
        flash[:success] = "Senha enviada para #{@u.email}."
        redirect_to root_path
      else
        flash[:error] = "Nao foi possivel recuperar a senha do email: #{(params[:email])}"
      end
    end
  end

  def top
    #hash com os melhores argumentos pelos usuários
    #@top_c = Rate.average(:stars, :conditions => "rateable_type = 'Argument' AND dimension = 'comunidade'", :group => [:rateable_id], :order => 'stars DESC, rateable_id')
    @top_c = Rate.group(:rateable_id).average(:stars, :conditions => "rateable_type = 'Argument' AND dimension = 'comunidade'")
    @top_c.delete_if {|k, v| v < 4 }
    @top_c = Hash[@top_c.sort_by { |k, v| v }.reverse!]

    #hash com os melhores argumentos pelos moderadores
    @top_m = Rate.group(:rateable_id).average(:stars, :conditions => "rateable_type = 'Argument' AND dimension = 'moderador'")
    @top_m.delete_if {|k, v| v < 4 }
    @top_m = Hash[@top_m.sort_by { |k, v| v }.reverse!]
  end
end