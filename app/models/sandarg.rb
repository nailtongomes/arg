# == Schema Information
#
# Table name: sandargs
#
#  id         :integer         not null, primary key
#  claim      :text
#  ground     :text
#  warrant    :text
#  backing    :text
#  rebuttal   :text
#  qualifier  :text
#  content    :text
#  user_id    :integer
#  overwrite  :boolean         default(TRUE)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Sandarg < ActiveRecord::Base
  attr_accessible :content, :claim, :ground, :warrant, 
                  :backing, :rebuttal, :qualifier, :overwrite
                    
  belongs_to :user

  before_save :gen_content

  validates :user_id, presence: true
  validates :claim, presence: true
  validates :ground, presence: true
    
  private

  def gen_content    
    if self.overwrite
    b = %([B] #{self.backing})
    w = %([W] #{self.warrant})
    g = %([G] #{self.ground})
    q = %([Q] #{self.qualifier})
    c = %([C] #{self.claim})    
      if self.backing.blank? && self.warrant.present?
        self.content = %[Entende-se que #{w}. Dado que #{g}, portanto, #{q}, #{c}.]
      elsif self.backing.present? && self.warrant.blank?
        self.content = %[Dado que #{g}, portanto, #{q}, #{c}, com base no #{b}.]
      elsif self.backing.blank? && self.warrant.blank?        
        self.content = %[Dado que #{g}, portanto, #{q}, #{c}.]
      else
        self.content = %[Com base no #{b}, assume-se que #{w}. Dado que #{g}, portanto, #{q}, #{c}.]  
      end      
    end         
  end  
end
