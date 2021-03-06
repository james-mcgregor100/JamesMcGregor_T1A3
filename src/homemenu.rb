require 'tty-prompt'
require 'tty-progressbar'
require 'colorize'
require_relative "./main.rb"
require_relative "./history.rb"
require_relative "./geography.rb"
require_relative "./litphil.rb"

def topics
@availabletopics = ['History', 'Geography', 'Literature and Philosophy', 'Exit']
end 

def choosetopics
    puts title
    prompt = TTY::Prompt.new 
    topicchoice = prompt.select("Choose your trivia topic:",  topics, active_color: :cyan, help_color: :cyan)

    case topicchoice
    
        when 'History'
            loadingquiz "History"
            historyquiz
            stayorleave

        when 'Geography'
            loadingquiz "Geography"
            geographyquiz
            stayorleave

        when 'Literature and Philosophy'
            loadingquiz "Literature and Philosophy"
            litandphilosophyquiz
            stayorleave
        
        when 'Exit'

        end
end 

def loadingquiz (topic)
    sleep(2)
    puts "\n\nTaking you to the #{topic} quiz. Please wait a moment."
    
    sleep(3)
    system 'clear'

end 