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
class Form < ApplicationRecord
  belongs_to :campaign
end
