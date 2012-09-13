require 'csv'

CSV.read("./results.csv").each do |row|
  puts row[6]

  if row[6] == "Yes"
    `echo #{row[1]} >> ./data/#{row[3]}`
  end

end
