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
class Segment < ApplicationRecord
  belongs_to :company
end
