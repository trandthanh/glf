task :update_from_csv => :environment do
	FlatsFromCsv.call
end