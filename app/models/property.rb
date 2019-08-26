class Property < ApplicationRecord
	has_many :stations, inverse_of: :property, dependent: :destroy
	accepts_nested_attributes_for :stations
	validates :property_name, presence: true
	validates :rent, :age, numericality: true, allow_nil: true
end
