class Fact < ActiveRecord::Base
  attr_accessible :content, :problem  

  validates :content, presence: true
  validates :problem, presence: true

  default_scope order: 'facts.created_at DESC'
end
