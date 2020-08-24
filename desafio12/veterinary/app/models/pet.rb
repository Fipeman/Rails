class Pet < ApplicationRecord
  has_many :pet_histories
  belongs_to :client
def visites
  pet_histories.count
end
end
