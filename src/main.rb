require 'colorize'
require "tty-prompt"
require "tty-progressbar"
require "tty-spinner"
require_relative "./history.rb"
require_relative "./geography.rb"
require_relative "./litphil.rb"
require_relative "./homemenu.rb"


def title
title = "\n\n
    ████████╗ ██████╗░ ██╗ ██╗░░░██╗ ██╗ ░█████╗░   ███╗░░██╗ ██╗ ░██████╗░ ██╗░░██╗ ████████╗
    ╚══██╔══╝ ██╔══██╗ ██║ ██║░░░██║ ██║ ██╔══██╗   ████╗░██║ ██║ ██╔════╝░ ██║░░██║ ╚══██╔══╝
    ░░░██║░░░ ██████╔╝ ██║ ╚██╗░██╔╝ ██║ ███████║   ██╔██╗██║ ██║ ██║░░██╗░ ███████║ ░░░██║░░░
    ░░░██║░░░ ██╔══██╗ ██║ ░╚████╔╝░ ██║ ██╔══██║   ██║╚████║ ██║ ██║░░╚██╗ ██╔══██║ ░░░██║░░░
    ░░░██║░░░ ██║░░██║ ██║ ░░╚██╔╝░░ ██║ ██║░░██║   ██║░╚███║ ██║ ╚██████╔╝ ██║░░██║ ░░░██║░░░
    ░░░╚═╝░░░ ╚═╝░░╚═╝ ╚═╝ ░░░╚═╝░░░ ╚═╝ ╚═╝░░╚═╝   ╚═╝░░╚══╝ ╚═╝ ░╚═════╝░ ╚═╝░░╚═╝ ░░░╚═╝░░░\n\n".colorize(:light_blue)
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
THEIR KNOWLEDGE ON INTERESTING AND CHALLENGING TOPICS."
    sleep(10)
    system 'clear'
    puts title
    puts "\n\n"
puts "People who are not interested in playing trivia games may not enjoy this game, lol. " 
puts "\nSo if you are one of those people, you are free to leave now ^_^ "
    sleep(6)
    puts "\n\n"
    system 'clear'
end 

def stayorleave
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
    puts "\n"
    bar = TTY::ProgressBar.new("Loading [:bar]", total: 30)
    30.times do
    sleep(0.1)
    bar.advance(1)
    end 

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
    puts "\nTaking you to the #{topic} quiz. Please wait a moment....\n"
    puts "\n"
    spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :pulse_2)
    spinner.auto_spin
    sleep(5) 
    spinner.stop
    sleep(2)
    system 'clear'
end 

def argument
    app = "Trivia Night"
    name = "Old Friend"
    app = ARGV[0] if ARGV[0]
    name = ARGV[1] if ARGV[1]
    puts "Welcome #{name}."
    sleep(3)
    puts "This app is called #{app}. We love playing trivia, and we hope you enjoy playing it too."
    sleep(5)
    system 'clear'
end 

    argument
    startupmenu
    stayorleave
    choosetopics