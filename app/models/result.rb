class Result < ApplicationRecord
	belongs_to :driver
	belongs_to :constructor
	belongs_to :race
end
