# == Schema Information
#
# Table name: forms
#
#  id          :bigint           not null, primary key
#  campaign_id :bigint           not null
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class FormTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
