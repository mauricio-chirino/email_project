# == Schema Information
#
# Table name: segments
#
#  id         :bigint           not null, primary key
#  company_id :bigint           not null
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class SegmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
