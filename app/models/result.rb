class Result < ApplicationRecord
	belongs_to :driver
	belongs_to :race
	
	def self.points_compare
		Result.includes(:race).order('points desc').limit(10).pluck("races.name, points")
	end


	def self.wins_by_year
		Result.includes(:race).group(:position).where('races.year =' + $year).pluck("position, count(position) as points_number")
	end

	def self.column_chart
		Result.includes(:driver).includes(:race).group(:surname).order('sum(points) desc').where('races.year =' + $year_column_chart).pluck("surname, sum(points) as overall_points")
	end

	def self.rank_change
		Result.includes(:race).where('races.year = 2017').pluck("races.name, position")
	end
	
end