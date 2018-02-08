namespace :results do
  desc "TODO"
  task seed_results: :environment do
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
      result_var.rank = result["rank"]
      result_var.save
    end

  end

end
