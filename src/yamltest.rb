require 'yaml'

countries = ["japan", "thailand", "korea"]
File.open("history.yml", "w") { |file| file.write(countries.to_yaml) }

new_array = YAML.load(File.read("history.yml"))
print new_array

total_score = [10, 50, 20, 1000, 800]
#print total_score.sum
#puts "\n\n"
File.open("history.yml", "w") { |file| file.write(total_score.to_yaml)}

final_score = YAML.load(File.read("history.yml"))
puts "\n\n"
print "The final score is #{final_score.sum}"
puts "\n\n"


