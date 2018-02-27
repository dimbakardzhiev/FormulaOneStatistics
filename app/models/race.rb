class Race < ApplicationRecord
	has_many :results

  	enum races_years: {
		"2017" => "2017",
		"2016" => "2016",
		"2015" => "2015"
  	}  
end
