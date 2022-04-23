require 'colorize'
require "tty-prompt"
require "tty-progressbar"
require_relative "./titles.rb"
require_relative "./answers.rb"
#require_relative "./homemenu.rb"

def historyquiz
        totalscore = []
        histbook = []
        $prompt = TTY::Prompt.new
        historytitle
        question1 = 'In what year was the European Union formed?'
        puts "\n\n"
        choices = %w(1917 1993 1945 1905)
        answer = $prompt.select(question1, choices, active_color: :yellow, help_color: :yellow)

    if answer == choices[1]
        sleep(3)
        totalscore << 1
        correct_answer

    else
        histbook << 'You may want to read "The European Union (Politics and Policies)" by Jonathan Olsen to learn more about the European Union.'
        wrong_answer
    end 

        system 'clear'
        $prompt = TTY::Prompt.new
        historytitle
        question2 = 'Mohammad Mosaddegh was the 35th Prime Minister of which country in the 1950s?'
        choices = %w(Turkey Iraq Israel Iran)
        answer = $prompt.select(question2, choices, active_color: :yellow, help_color: :yellow)

    if answer == choices[3]
        sleep(3)
        totalscore << 1
        correct_answer

    else
        histbook << 'You may want to read the book titled "Mohammed Mosaddeq and the 1953 Coup in Iraq" by Mark Gasiorowski if you would like to learn more about Iranian political history.'
        wrong_answer
    end 

        system 'clear'
    
        $prompt = TTY::Prompt.new
        historytitle
        question3 = 'In what city was the first ever publicly traded stock company established?'
        choices = ["London", "New York", "Paris", "Amsterdam"]
        answer = $prompt.select(question3, choices, active_color: :yellow, help_color: :yellow)

    if answer == choices[3]
        sleep(3)
        totalscore <<1
        correct_answer

    else
        histbook << 'Consider reading "Merchant Kings" by Stephen R. Bown to learn more about the Dutch East India Company.'
        wrong_answer
    end 

        system 'clear'
        
        $prompt = TTY::Prompt.new
        historytitle
        question4 = 'The conflict referred to as the "Opium Wars" occurred in what country?'
        choices = %w(Japan Afghanistan China Vietnam)
        answer = $prompt.select(question4, choices, active_color: :yellow, help_color: :yellow)

    if answer == choices[2]
        sleep(3)
        totalscore << 1
        correct_answer

    else

        histbook << '"Imperial Twilight" by Stephen R. Platt is a great book to read to understand more about the Opium Wars that occurred in China.'
        wrong_answer

    end 

        system 'clear'
        
        $prompt = TTY::Prompt.new
        historytitle
        question5 = 'The Pelopennesian War was fought betwen Athens and which other Ancient Greek state?'
        choices = %w(Corinth Sparta Sumera Peloppon)
        answer = $prompt.select(question5, choices, active_color: :yellow, help_color: :yellow)

    if answer == choices[1]
        sleep(3)
        totalscore << 1
        correct_answer

    else
        histbook << 'The book titled "The History of the Pelopennesian War" by Thucydides is the perfect book to learn more about one of the most famous wars in history which is still studied today by political science scholars.'
        wrong_answer
    end 

        system 'clear'
        
        $prompt = TTY::Prompt.new
        historytitle
        question6 = 'The ancient region of Mesopotamia is now located in which modern day country?'
        choices = %w(Libya Turkey Iraq Syria)
        answer = $prompt.select(question6, choices, active_color: :yellow, help_color: :yellow)

    if  answer == choices[2]
        sleep(3)
        totalscore << 1
        correct_answer
        
    else
        histbook << "You would be able to fill in your gaps about Iraq's ancient history by reading 'Civilizations of Ancient Iraq' by Benjamin and Karen Foster."
        wrong_answer
    end 

        system 'clear'
        
        $prompt = TTY::Prompt.new
        historytitle
        question7 = 'Marcus Aurelius was the emporer of which empire?'
        choices = ["Ottoman Empire", "British Empire", "Greek Empire", "Roman Empire"]
        answer = $prompt.select(question7, choices, active_color: :yellow, help_color: :yellow)
    
    if  answer == choices[3]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
    else
        sleep(3)
        histbook << 'The book "Meditations" by Marcus Aurelius is one of the best books to get started if you would like to learn about one of the famous Roman Emporers to have ever lived.'
        puts "\nWrong answer."
        sleep(3)
    end

        finishhistory
        historytitle
        puts "Your total score is #{totalscore.sum} out of 7"
        sleep(5) 
        system 'clear'

    if histbook.length > 0
        bookrecommend
        $prompt = TTY::Prompt.new
        question = 'Would you like to view our book recommendations?'
        choices = %w(Yes No)
        answer = $prompt.select(question, choices, active_color: :red, help_color: :red)
        puts "\n"
        if answer == 'Yes'
            sleep(3)
            system 'clear'
            booktitle
            sleep(3)
            puts "Loading book recommendations.......\n".colorize(:red)
            sleep(4)
            histbook.each do |item|
            puts "- #{item}"
            puts "\n" 
            sleep(3)
        end 
        else  
        sleep(3)
        puts "Please wait while we take you back to the home menu...."
        sleep(4)
        end 

    else  
        sleep(3)
        puts "Please wait while we take you back to the home menu...."
        sleep(4)
    end
    puts "You must decide whether to play another quiz, or leave the application\n".colorize(:red)
end 

def finishhistory
    system 'clear'
    historytitle
    sleep(2)
    puts "Congratulations on finishing the quiz!"
    sleep (3)
    system 'clear'
    historytitle
    puts "Please wait while we calculate your results...."
    sleep(5)
    system 'clear'
end 

def bookrecommend
    booktitle
    puts "Our quiz has discovered some gaps in your knowledge that could be easily filled in if you were to do some extra readings.\n\nBased on the answer/s you got incorrect, we have a list of books you may like to read to fill in the gaps.\n\n"
end 
