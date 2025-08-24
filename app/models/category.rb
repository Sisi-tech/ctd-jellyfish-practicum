class Category < ApplicationRecord
  has_many :expenses, dependent: :nullify
  validates :name, presence: true, uniqueness: true
end
