# == Schema Information
#
# Table name: facts
#
#  id         :integer         not null, primary key
#  content    :text
#  problem    :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Fact < ActiveRecord::Base
  attr_accessible :content, :problem  

  validates :content, presence: true
  validates :problem, presence: true

  default_scope order: 'facts.created_at DESC'
end
