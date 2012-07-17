# == Schema Information
#
# Table name: rates
#
#  id            :integer         not null, primary key
#  rater_id      :integer
#  rateable_id   :integer
#  rateable_type :string(255)
#  stars         :integer         not null
#  dimension     :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null

#< Rate id: 1, rater_id: 3, rateable_id: 60, rateable_type: "Argument", stars: 5, dimension: "comunidade", 
#created_at: "2012-07-16 22:42:38",updated_at: "2012-07-16 22:42:38">

class Rate < ActiveRecord::Base
  belongs_to :rater, :class_name => "User"
  belongs_to :rateable, :polymorphic => true
  
  attr_accessible :rate, :dimension
end
