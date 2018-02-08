namespace :drivers do
  desc "TODO"
  task seed_drivers: :environment do
  	
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
  end

end
