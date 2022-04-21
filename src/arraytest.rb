

puts "would you like to return to the home page or exit the app?"
answer = gets.chomp 

if answer == "home"
    title
else 
    sleep(2)
end 
    puts"Goodbye now"
    sleep(3)
    system 'clear'

require_relative "./main.rb"