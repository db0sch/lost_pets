class Pet < ApplicationRecord
  SPECIES = %w(dog cat parrot fish)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end


