class Party < ActiveRecord::Base
  has_many :party_guests, :foreign_key => :party_id
  has_many :guests, :through => :party_guests, :source => :party_user
  belongs_to :owner, :class_name => "User"
end
