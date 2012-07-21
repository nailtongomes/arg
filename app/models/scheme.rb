class Scheme < ActiveRecord::Base
  attr_accessible :cq, :form, :name

  validates :name, presence: true
  validates :form, presence: true

  default_scope order: 'schemes.name ASC'
  
  def self.search(search)
    if search
      where("LOWER(name) LIKE ?", "%#{search.downcase}%")
    else
      scoped
    end
  end

end
