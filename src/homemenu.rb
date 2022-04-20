require 'tty-prompt'
require 'tty-progressbar'
require 'colorize'
#require_relative "./main.rb"
require_relative "./history.rb"
require_relative "./geography.rb"
#require_relative "./litphil.rb"

def topics
@availabletopics = ['History', 'Geography', 'Literature and Philosophy', 'Exit']
end 

def choosetopics
    prompt = TTY::Prompt.new 
    topicchoice = prompt.select("Choose your trivia topic:",  topics, active_color: :cyan, help_color: :cyan)

    case topicchoice
    
        when 'History'
            sleep(2)
            puts "\n\nTaking you to the History quiz. Please wait a moment"
            sleep(3)
            system 'clear'
            historytrial

        when 'Geography'
            sleep(2)
            puts "\n\nTaking you to the Geography quiz. Please wait a moment."
            sleep(3)
            system 'clear'
            geographytrial

        when 'Literature and Philosophy'
            sleep(2)
            puts "\n\nTaking you to the Literature and Philosophy quiz. Please wait a moment."
            sleep(3)
            system 'clear'
            litandphilosophy
        
        when 'Exit'
            sleep(2)
            puts "\n\nTaking you back to the home page......."
            sleep(3)
            system 'clear'
        end 
        puts "You have returned to the home menu."
end 

    choosetopics 