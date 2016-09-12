class CreatePartyGuests < ActiveRecord::Migration
  def change
    create_table :party_guests do |t|
      t.belongs_to :user
      t.belongs_to :party

      t.timestamps null: false
    end
  end
end
