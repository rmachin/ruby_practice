dial_book = {
  "Miami" => "305",
  "Boca Raton" => "561",
  "Palm Beach" => "407",
  "Daytona Beach" => "386",
  "Tampa" => "813",
  "Cape Coral" => "239",
  "Clearwater" => "727",
  "Dundee" => "863",
  "Tavares" => "352",
  "Perry" => "850"
}

def get_city_names(thehash)
  thehash.each { |k, v| puts "* " + "#{k}" } # list of cities in hash
end

loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"

  answer = gets.chomp.upcase
  if answer != "Y"
    break
  end
  puts "Which city do you want the area code for?"

  get_city_names(dial_book) # list of cities in hash
  city_name = gets.chomp # Input from user City Name
  city_area_code = dial_book["#{city_name}"]

  if city_area_code == nil
    (1..50).each { |i| print "*"} # Decoration
    (1..1).each { |i| puts "*"} # White lane Space

    puts "Sorry, we do not have '#{city_name}' in our database."
    (1..50).each { |i| print "*"} # Decoration
    (1..1).each { |i| puts "*"} # White lane Space
  else
    puts "The area code for #{city_name} is: (#{city_area_code})"
  end
end
