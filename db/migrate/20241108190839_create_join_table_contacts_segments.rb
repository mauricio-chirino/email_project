class CreateJoinTableContactsSegments < ActiveRecord::Migration[7.2]
  def change
    create_join_table :contacts, :segments do |t|
      # t.index [:contact_id, :segment_id]
      # t.index [:segment_id, :contact_id]
    end
  end
end
