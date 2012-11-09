class Document < ActiveRecord::Base
  attr_accessible :active, :body, :subject, :title
  
  belongs_to :user
  
  validates :body, presence: true
  validates :user_id, presence: true
  
  default_scope order: 'documents.title ASC'
end
