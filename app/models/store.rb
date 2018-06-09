class Store < ApplicationRecord
  has_many :checkins
  belongs_to :stay_time
end
