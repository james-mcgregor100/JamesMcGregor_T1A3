#require_relative 'answers.rb'
#require_relative "./welcome.rb"
#require_relative 'instructions.rb'
require 'colorize'
require "tty-prompt"
require "tty-progressbar"
require_relative "./history.rb"
require_relative "./geography.rb"
require_relative "./litphil.rb"
require_relative "./homemenu.rb"


def title
title = "\n\n
    ████████╗██████╗░██╗██╗░░░██╗██╗░█████╗░    ███╗░░██╗██╗░██████╗░██╗░░██╗████████╗
    ╚══██╔══╝██╔══██╗██║██║░░░██║██║██╔══██╗    ████╗░██║██║██╔════╝░██║░░██║╚══██╔══╝
    ░░░██║░░░██████╔╝██║╚██╗░██╔╝██║███████║    ██╔██╗██║██║██║░░██╗░███████║░░░██║░░░
    ░░░██║░░░██╔══██╗██║░╚████╔╝░██║██╔══██║    ██║╚████║██║██║░░╚██╗██╔══██║░░░██║░░░
    ░░░██║░░░██║░░██║██║░░╚██╔╝░░██║██║░░██║    ██║░╚███║██║╚██████╔╝██║░░██║░░░██║░░░
    ░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░░╚═╝░░░╚═╝╚═╝░░╚═╝    ╚═╝░░╚══╝╚═╝░╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░\n\n".colorize(:light_blue)
end 

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
    system 'clear'
    puts title
                        puts "WARNING:".red 
    puts "\n\nTHIS APPLICATION IS ONLY FOR PEOPLE WHO ENJOY 
PLAYING TRIVIA, OR FOR PEOPLE WHO ENJOY TESTING 
THEIR KNOWLEDGE ON FUN AND INTERESTING TOPICS."
    sleep(10)
    system 'clear'
    puts title
    puts "\n\n"
puts "People who are not interested in playing trivia games may not enjoy this game, lol. " 
puts "\nSo if you are one of those people, you are free to leave now ^_^ "
    sleep(5)
    puts "\n\n"
    system 'clear'
end 

def stayorleave
    #puts title
    prompt = TTY::Prompt.new
    answer = prompt.select("Would you like to play or leave? Select below: ") do |menu|
        menu.choice 'Play'
        menu.choice 'Exit'
    end 
    
    if answer == 'Play'
        sleep (2)
        puts "\n\nYou want to play? That's great!"
        sleep(3)
        system 'clear'

    else
        sleep(3)
        puts "\n\nYou have chosen to exit the application. Goodbye for now ^_^."
        sleep(5)
        system 'clear'  
        exit!
    end 
end 

def topics
    @availabletopics = ['History', 'Geography', 'Literature and Philosophy', 'Exit']
    end 

def choosetopics
    puts title
    puts "\n\nPlease wait while we load the trivia menu for you...."
    sleep (4)
    system'clear'
    puts title
    prompt = TTY::Prompt.new 
    topicchoice = prompt.select("Choose your trivia topic:", topics, active_color: :cyan, help_color:
:cyan)

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
            sleep(2)
            puts "\n\nYou selected to exit the application. We hope you return in the future. Goodbye ^_^"
            sleep(5)
            system 'clear'
            exit!
        end 
        sleep(1)
        system 'clear'
        choosetopics
end 

def loadingquiz (topic)
    sleep(3)
    puts "\n\nTaking you to the #{topic} quiz. Please wait a moment...."
    sleep(4)
    system 'clear'
end 


    startupmenu
    stayorleave
    choosetopics

    
#prompt.keypress("Press SPACE or ENTER to continue", keys: [:space, :return])
# I like this one ^^^^

#bar = TTY::ProgressBar.new("downloading [:bar]", total: 20)
#
#30.times do
#    sleep(0.1)
#    bar.advance
#end 
#