# == Schema Information
#
# Table name: email_templates
#
#  id          :bigint           not null, primary key
#  campaign_id :bigint           not null
#  name        :string
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class EmailTemplateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
