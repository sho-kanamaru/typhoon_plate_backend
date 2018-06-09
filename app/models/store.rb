class Store < ApplicationRecord
  has_many :checkin
  belongs_to :stay_time
end
