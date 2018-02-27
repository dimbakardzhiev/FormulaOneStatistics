class Result < ApplicationRecord
	belongs_to :driver
	belongs_to :race


def self.most_points
	Result.find_by_sql("SELECT R.name, A.points 
		FROM Races R, Results A
		WHERE R.id = A.race_id
		ORDER BY A.points desc
		LIMIT 10")
end	


def self.most_points_another 
	Result.includes(:race).order('points desc').limit(10).pluck("races.name, points")
end


def self.rank_change
	Result.includes(:race).where('races.year = 2017').pluck("races.name, position")
end

def self.position_changes 
	Result.find_by_sql("SELECT R.id, A.position
		FROM Races R, Results A
		WHERE R.id = A.race_id
		AND R.year = 2017 AND A.driver_id = 1
		ORDER BY A.race_id asc")
end	

def self.wins_by_year
	Result.includes(:race).group(:position).where('races.year =' + $year).pluck("position, count(position) as points_number")
end


end