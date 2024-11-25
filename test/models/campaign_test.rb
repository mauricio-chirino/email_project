# == Schema Information
#
# Table name: campaigns
#
#  id          :bigint           not null, primary key
#  company_id  :bigint           not null
#  segment_id  :bigint           not null
#  name        :string
#  description :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class CampaignTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
