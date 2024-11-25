# == Schema Information
#
# Table name: contacts
#
#  id           :bigint           not null, primary key
#  company_id   :bigint           not null
#  email        :string
#  first_name   :string
#  last_name    :string
#  job_title    :string
#  company_name :string
#  industry     :string
#  tax_id       :string
#  phone        :string
#  mobile       :string
#  address      :string
#  city         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Contact < ApplicationRecord
  belongs_to :company
end
