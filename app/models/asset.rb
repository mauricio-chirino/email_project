# == Schema Information
#
# Table name: assets
#
#  id         :bigint           not null, primary key
#  company_id :bigint           not null
#  name       :string
#  file_url   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Asset < ApplicationRecord
  belongs_to :company
end
