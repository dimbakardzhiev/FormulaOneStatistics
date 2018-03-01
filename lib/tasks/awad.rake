namespace :awad do
  desc "TODO"
  task seed_awad: :environment do


  	file = File.read('lib/assets/drivers.json')
  	data_hash = JSON.parse(file)

  	data_hash.each do |json_object|

  		puts json_object.inspect
  		driver_var = Driver.new
  		driver_var.forename = json_object["forename"]
  		driver_var.surname = json_object["surname"]
  		driver_var.dob = json_object["dob"]
  		driver_var.nationality = json_object["nationality"]
  		driver_var.save
    end

    file_races = File.read('lib/assets/races.json')
    races_hash = JSON.parse(file_races)

    races_hash.each do |race|
      puts race.inspect
      race_var = Race.new
      race_var.year = race["year"]
      race_var.round = race["round"]
      race_var.name = race["name"]
      race_var.date = race["date"]
      race_var.save
    end

    file_results = File.read('lib/assets/results.json')
    results_hash = JSON.parse(file_results)

    value = [1,2,3,4,5,6,7]
    results_hash.each do |result|

      if value.include?(result["driver_id"])
        
      puts result.inspect
      result_var = Result.new
      result_var.race_id = result["race_id"]
      result_var.driver_id = result["driver_id"]
      result_var.position = result["positionOrder"]
      result_var.points = result["points"].to_i
      result_var.save
      end
    end

  end
end
