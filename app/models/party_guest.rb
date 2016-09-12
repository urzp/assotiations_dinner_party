class PartyGuest < ActiveRecord::Base
  belongs_to :party_user, :foreign_key => "user_id", :class_name => "User"
  belongs_to :user_party, :foreign_key => "party_id", :class_name => "Party"
end
