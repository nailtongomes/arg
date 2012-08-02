class Page < ActiveRecord::Base
  attr_accessible :key, :value
  
  validates :key, presence:   true,
                  uniqueness: { case_sensitive: false }
end
