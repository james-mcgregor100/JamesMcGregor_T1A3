require 'colorize'
require "./history.rb"

def booktitle
    puts "\n\n
    ██████╗░    ░█████╗░    ░█████╗░    ██╗░░██╗    ░██████╗
    ██╔══██╗    ██╔══██╗    ██╔══██╗    ██║░██╔╝    ██╔════╝
    ██████╦╝    ██║░░██║    ██║░░██║    █████═╝░    ╚█████╗░
    ██╔══██╗    ██║░░██║    ██║░░██║    ██╔═██╗░    ░╚═══██╗
    ██████╦╝    ╚█████╔╝    ╚█████╔╝    ██║░╚██╗    ██████╔╝
    ╚═════╝░    ░╚════╝░    ░╚════╝░    ╚═╝░░╚═╝    ╚═════╝░
    \n\n".colorize(:light_red)
end 

def historytitle
    puts "\n\n
    ██╗░░██╗ ██╗ ░██████╗ ████████╗ ░█████╗░ ██████╗░ ██╗░░░██╗
    ██║░░██║ ██║ ██╔════╝ ╚══██╔══╝ ██╔══██╗ ██╔══██╗ ╚██╗░██╔╝
    ███████║ ██║ ╚█████╗░ ░░░██║░░░ ██║░░██║ ██████╔╝ ░╚████╔╝░
    ██╔══██║ ██║ ░╚═══██╗ ░░░██║░░░ ██║░░██║ ██╔══██╗ ░░╚██╔╝░░
    ██║░░██║ ██║ ██████╔╝ ░░░██║░░░ ╚█████╔╝ ██║░░██║ ░░░██║░░░
    ╚═╝░░╚═╝ ╚═╝ ╚═════╝░ ░░░╚═╝░░░ ░╚════╝░ ╚═╝░░╚═╝ ░░░╚═╝░░░
    \n\n".colorize(:yellow)
end 

def geographytitle
    puts "\n\n 
    ░██████╗░ ███████╗ ░█████╗░ ░██████╗░ ██████╗░ ░█████╗░ ██████╗░ ██╗░░██╗ ██╗░░░██╗
    ██╔════╝░ ██╔════╝ ██╔══██╗ ██╔════╝░ ██╔══██╗ ██╔══██╗ ██╔══██╗ ██║░░██║ ╚██╗░██╔╝
    ██║░░██╗░ █████╗░░ ██║░░██║ ██║░░██╗░ ██████╔╝ ███████║ ██████╔╝ ███████║ ░╚████╔╝░
    ██║░░╚██╗ ██╔══╝░░ ██║░░██║ ██║░░╚██╗ ██╔══██╗ ██╔══██║ ██╔═══╝░ ██╔══██║ ░░╚██╔╝░░
    ╚██████╔╝ ███████╗ ╚█████╔╝ ╚██████╔╝ ██║░░██║ ██║░░██║ ██║░░░░░ ██║░░██║ ░░░██║░░░
    ░╚═════╝░ ╚══════╝ ░╚════╝░ ░╚═════╝░ ╚═╝░░╚═╝ ╚═╝░░╚═╝ ╚═╝░░░░░ ╚═╝░░╚═╝ ░░░╚═╝░░░
    \n\n".colorize(:green)
end

def philosophy
    puts "\n\n
    ██╗░░░░░ ██╗ ████████╗ ███████╗ ██████╗░ ░█████╗░ ████████╗ ██╗░░░██╗ ██████╗░ ███████╗  ░░░░░░░
    ██║░░░░░ ██║ ╚══██╔══╝ ██╔════╝ ██╔══██╗ ██╔══██╗ ╚══██╔══╝ ██║░░░██║ ██╔══██╗ ██╔════╝  ░░██╗░░
    ██║░░░░░ ██║ ░░░██║░░░ █████╗░░ ██████╔╝ ███████║ ░░░██║░░░ ██║░░░██║ ██████╔╝ █████╗░░  ██████╗
    ██║░░░░░ ██║ ░░░██║░░░ ██╔══╝░░ ██╔══██╗ ██╔══██║ ░░░██║░░░ ██║░░░██║ ██╔══██╗ ██╔══╝░░  ╚═██╔═╝
    ███████╗ ██║ ░░░██║░░░ ███████╗ ██║░░██║ ██║░░██║ ░░░██║░░░ ╚██████╔╝ ██║░░██║ ███████╗  ░░╚═╝░░
    ╚══════╝ ╚═╝ ░░░╚═╝░░░ ╚══════╝ ╚═╝░░╚═╝ ╚═╝░░╚═╝ ░░░╚═╝░░░ ░╚═════╝░ ╚═╝░░╚═╝ ╚══════╝  ░░░░░░░

    ██████╗░ ██╗░░██╗ ██╗ ██╗░░░░░ ░█████╗░ ░██████╗ ░█████╗░ ██████╗░ ██╗░░██╗██╗░░░██╗
    ██╔══██╗ ██║░░██║ ██║ ██║░░░░░ ██╔══██╗ ██╔════╝ ██╔══██╗ ██╔══██╗ ██║░░██║╚██╗░██╔╝
    ██████╔╝ ███████║ ██║ ██║░░░░░ ██║░░██║ ╚█████╗░ ██║░░██║ ██████╔╝ ███████║░╚████╔╝░
    ██╔═══╝░ ██╔══██║ ██║ ██║░░░░░ ██║░░██║ ░╚═══██╗ ██║░░██║ ██╔═══╝░ ██╔══██║░░╚██╔╝░░
    ██║░░░░░ ██║░░██║ ██║ ███████╗ ╚█████╔╝ ██████╔╝ ╚█████╔╝ ██║░░░░░ ██║░░██║░░░██║░░░
    ╚═╝░░░░░ ╚═╝░░╚═╝ ╚═╝ ╚══════╝ ░╚════╝░ ╚═════╝░ ░╚════╝░ ╚═╝░░░░░ ╚═╝░░╚═╝░░░╚═╝░░░
    \n\n".colorize(:magenta)
end 