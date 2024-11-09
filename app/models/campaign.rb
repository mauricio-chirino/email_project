class Campaign < ApplicationRecord
  belongs_to :company
  belongs_to :segment
end
