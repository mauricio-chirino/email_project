# == Schema Information
#
# Table name: companies
#
#  id         :bigint           not null, primary key
#  name       :string
#  industry   :string
#  address    :string
#  city       :string
#  phone      :string
#  tax_id     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
