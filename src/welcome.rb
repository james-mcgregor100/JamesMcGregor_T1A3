require "tty-prompt"
require_relative "./main.rb"

def startupmenu
    puts title
    sleep(2)
    puts "\n\nGood evening!!!\n\n".red
    sleep(4)
    system 'clear'
    puts title
    puts "\n\nWelcome to Trivia Night.....\n\n".blue
    sleep(4)
    #sleep(3)
    system 'clear'
    puts title
    puts "WARNING: THIS APPLICATION IS ONLY FOR PEOPLE WHO ENJOY 
        PLAYING TRIVIA, OR FOR PEOPLE WHO ENJOY TESTING 
        THEIR KNOWLEDGE ON FUN AND INTERESTING TOPICS.".red
    sleep(9)
    system 'clear'
    puts title
    puts "\n\n"
    puts "People who are not interested in this, may want to leave. 
So if you are one of those people, you a free to leave now.".blue
    sleep(3)
    puts "\n\n"

    prompt = TTY::Prompt.new
    answer = prompt.select("Would you like to play or leave? Please select below: ") do |menu|
        menu.choice 'Play'.colorize(:red)
        menu.choice 'Exit'.colorize(:red)
    end 
    
    if answer == 'Play'
        sleep (2)
        puts "\n\nGreat! Please wait while we load the trivia menu"
        sleep (3)
        puts "\n\nPlease choose from the menu...... "
    else
        sleep(2)
        system 'clear'
        puts "You chosen to exit the application....."
        puts "\nGoodbye for now ^_^."
        exit!
    end 
end 
