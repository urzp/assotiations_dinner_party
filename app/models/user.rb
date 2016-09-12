class User < ActiveRecord::Base
  has_many :dinner_parties,  :foreign_key => "owner_id", :class_name => "Party"
  has_many :invitations, :through => :party_users, :source => :user_party
  has_many :party_users, :foreign_key => :user_id, :class_name => "PartyGuest"
end
