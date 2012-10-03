class Msg < ActiveRecord::Base
  attr_accessible :body, :id_receiver, :read, :subject
  belongs_to :user
  
  validates :body, presence: true, length: { maximum: 1600}
  validates :user_id, presence: true
  
  default_scope order: 'msgs.created_at DESC'
end
