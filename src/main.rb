#require_relative 'answers.rb'
#require_relative "./welcome.rb"
#require_relative 'instructions.rb'
require 'colorize'
require "tty-prompt"
require "tty-progressbar"
require_relative './history.rb'


def title
title = "\n\n
    ████████╗██████╗░██╗██╗░░░██╗██╗░█████╗░    ███╗░░██╗██╗░██████╗░██╗░░██╗████████╗
    ╚══██╔══╝██╔══██╗██║██║░░░██║██║██╔══██╗    ████╗░██║██║██╔════╝░██║░░██║╚══██╔══╝
    ░░░██║░░░██████╔╝██║╚██╗░██╔╝██║███████║    ██╔██╗██║██║██║░░██╗░███████║░░░██║░░░
    ░░░██║░░░██╔══██╗██║░╚████╔╝░██║██╔══██║    ██║╚████║██║██║░░╚██╗██╔══██║░░░██║░░░
    ░░░██║░░░██║░░██║██║░░╚██╔╝░░██║██║░░██║    ██║░╚███║██║╚██████╔╝██║░░██║░░░██║░░░
    ░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░░╚═╝░░░╚═╝╚═╝░░╚═╝    ╚═╝░░╚══╝╚═╝░╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░\n\n".colorize(:light_blue)
end 
    sleep (2)
    puts "\n\n\n" + title + "\n\n\n"
    sleep(2)

        
        
        
        
        
#
        #system 'clear'
        #option = ""
        #while option != "Exit"
        #    option = select_option 
        #    case option 
        #    when "Play"
        #    #instructions
        #    when "Leave"
        #    break
        #    end 
        #end 

        

     







#puts "What is your name?"
#name = gets.chomp 
#sleep(3)
#system("clear")
#puts name


#        for line in file.readlines()
#        puts line
#    end 
#end 

## global
#prompt1 = TTY::Prompt.new#(quiet: false)
#
#prompt1.select("What genre book are you looking for?", %w(history politics society))
#
#if 
#
#prompt2 = TTY::Prompt.new#(quiet: false)
#
#prompt2.select("What is your favorite food?", %w(thai japanese korean))




#prompt.yes?("Are you hot or cold?") do |q|
#    q.suffix "hot/cold"
#end 


#prompt.keypress("Press SPACE or ENTER to continue", keys: [:space, :return])
# I like this one ^^^^


#prompt.mask("What is your password?")
#puts "\n\n"
#prompt.ask("Please type in your password: ", echo: false)

#choices = %w(Bangkok Tokyo Beijing Seoul)
#prompt.multi_select("Select Capital Cities?", choices)











#bar = TTY::ProgressBar.new("downloading [:bar]", total: 20)
#
#30.times do
#    sleep(0.1)
#    bar.advance
#end 
#
#prompt.ask("What is your name?", default: ENV["USER"])
#prompt.yes?("Do you like Ruby?")
#prompt.select("What drink would you like?", %w(Coffee Tea Water))


#def wrong_answer
#    puts "You've entered the wrong answer!"
#end 
#
#def correct_answer
#    puts "Congratulations. That is the correct answer!"
#end

#puts "1. What is the capital of Thailand?"
#puts "\n"
#capital = gets.chomp 
#puts "\n"
#if capital == "Bangkok"
#    correct_answer
#else
#    wrong_answer
#end 
#sleep (3)
#puts "\n"
#puts "2. What language beginning with 'U' do people in Pakistan speak?"
#language = gets.chomp 
#
#if language == "Urdu" || "urdu"
#    correct_answer
#else
#    wrong_answer
#end
#puts "\n"
#sleep (3)
#puts "The test is now finished."
#puts "\n\n\n"
#sleep (3)
#puts "Please wait while your results are calculated"
#### insert progress bar here
#puts "\n\n\n"
#puts "Your total score is "