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
class Campaign < ApplicationRecord
  belongs_to :company
  belongs_to :segment
end
