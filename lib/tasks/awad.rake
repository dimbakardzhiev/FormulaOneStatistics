namespace :awad do
  desc "TODO"
  task seed_awad: :environment do

  	Driver.destroy_all

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

    Circuit.destroy_all

    file_circuits = File.read('lib/assets/circuits.json')
    circuits_hash = JSON.parse(file_circuits)

    circuits_hash.each do |circuit|
      puts circuit.inspect
      circuit_var = Circuit.new
      circuit_var.name = circuit["name"]
      circuit_var.location = circuit["location"]
      circuit_var.country = circuit["country"]
      circuit_var.save
    end

    Constructor.destroy_all

    file_constructors = File.read('lib/assets/constructors.json')
    constructors_hash = JSON.parse(file_constructors)

    constructors_hash.each do |constructor|
      puts constructor.inspect
      constructor_var = Constructor.new
      constructor_var.name = constructor["name"]
      constructor_var.nationality = constructor["nationality"]
      constructor_var.save
    end

    Race.destroy_all

    file_races = File.read('lib/assets/races.json')
    races_hash = JSON.parse(file_races)

    races_hash.each do |race|
      puts race.inspect
      race_var = Race.new
      race_var.year = race["year"]
      race_var.round = race["round"]
      race_var.circuit_id = race["circuit_id"]
      race_var.name = race["name"]
      race_var.date = race["date"]
      race_var.save
    end

    Constructorresult.destroy_all

    file_constructorresults = File.read('lib/assets/constructorresults.json')
    constructorresults_hash = JSON.parse(file_constructorresults)

    constructorresults_hash.each do |res|
      puts res.inspect
      res_var = Constructorresult.new
      res_var.race_id = res["race_id"]
      res_var.constructor_id = res["constructor_id"]
      res_var.points = res["points"].to_i
      res_var.save
    end

    Result.destroy_all

    file_results = File.read('lib/assets/results.json')
    results_hash = JSON.parse(file_results)

    results_hash.each do |result|
      puts result.inspect
      result_var = Result.new
      result_var.race_id = result["race_id"]
      result_var.driver_id = result["driver_id"]
      result_var.constructor_id = result["constructor_id"]
      result_var.grid = result["grid"]
      result_var.position = result["position"]
      result_var.points = result["points"].to_i
      result_var.rank = result["rank"]
      result_var.save
    end
  end
end
