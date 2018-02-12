class Race < ApplicationRecord
	has_many :results
	belongs_to :circuit
	has_many :constructorresults
end
