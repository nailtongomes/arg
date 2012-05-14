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
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'test_helper'

class SandargTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
