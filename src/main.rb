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


#prompt.keypress("Press SPACE or ENTER to continue", keys: [:space, :return])
# I like this one ^^^^

#bar = TTY::ProgressBar.new("downloading [:bar]", total: 20)
#
#30.times do
#    sleep(0.1)
#    bar.advance
#end 
#