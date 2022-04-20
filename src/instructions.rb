def instructions
    puts "Do you know how to play trivia? y/n"
    answer = gets.chomp
    sleep(1)
    if answer == "y"
        puts "Great."
        sleep(2)
        puts "If you know how to play, then let's get started. If you would like to start the trivia game, please press ENTER. If not, press EXIT to leave the application."
    elsif answer == "n"
        puts "Ok, that's no problem."
        sleep(2)
        puts"Would you like to view the instructions about the game?"
    end  
    puts "Firstly, you must do this"
    sleep(2)
    puts "Secondly, you must do that"
end 

#def readytoplay
#    puts "If you are ready to play the game, please press type 'yes', if you would like to exit the application, please type 'exit' #to exit the application."
#    answer = gets.chomp
#    if answer == yes || YES 
#        puts "Great, let's get started."
#    elsif answer == exit || EXIT 
#        puts "Exiting the program."
#end
puts instructions 

