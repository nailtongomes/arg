# == Schema Information
#
# Table name: arguments
#
#  id         :integer         not null, primary key
#  content    :text
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Argument < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validates :content, presence: true, length: { maximum: 1100}
  validates :user_id, presence: true

  default_scope order: 'arguments.created_at DESC'

  # Returns arguments from the users being followed by the given user.
  scope :from_users_followed_by, lambda { |user| followed_by(user) }
  
  def self.search(search)
    if search
      where("LOWER(content) LIKE ?", "%#{search.downcase}%")
    else
      scoped
    end
  end

  private

  # Returns an SQL condition for users followed by the given user.
  # We include the user's own id as well.
  def self.followed_by(user)
    followed_user_ids = %(SELECT followed_id FROM relationships
                            WHERE follower_id = :user_id)
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
            { user_id: user })
  end
end
