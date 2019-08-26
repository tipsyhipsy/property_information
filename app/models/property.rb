class Property < ApplicationRecord
	has_many :stations, inverse_of: :property, dependent: :destroy
	accepts_nested_attributes_for :stations, reject_if: :all_blank
	validates :property_name, :address, presence: true
	validates :rent, :age, presence: true, numericality: true
end
