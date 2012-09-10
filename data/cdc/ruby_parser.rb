

#
# Parse DATA on data.html
# it is an html table
# for each tr
#   -- save the contents of last TD (Food Description into a file named after the third td.
#


require "nokogiri"

doc = Nokogiri::HTML( File.open("./data.html"))

doc.search('table > tbody >tr').each do |row|

  columns = row.search('td / p /text()')

  if columns[2]

    category = columns[2].to_s.gsub(" ", "_").downcase
    food_name = columns[5].to_s.gsub("(", "").gsub(")", "")

    `echo "#{food_name}" >> data/#{category}`

  end

end

