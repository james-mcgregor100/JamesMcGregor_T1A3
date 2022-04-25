require 'colorize'
require "tty-prompt"
require "tty-progressbar"
require_relative "./answers.rb"
require_relative "./titles.rb"

def litandphilosophyquiz
        totalscore = []
        histbook = []
        $prompt = TTY::Prompt.new
        philosophy
        question1 = 'The book "Heart of Darkness" written by Joseph Conrad was set in which African country?'
        choices = %w(Congo Zimbabwe Ethiopia Kenya)
        answer = $prompt.select(question1, choices, active_color: :magenta, help_color: :magenta)

    if answer == choices[0]
        sleep(3)
        totalscore << 1
        correct_answer
    else
        histbook << 'We recommend going straight to the primary source and reading "The Heart of Darkness" by Joseph Conrad to gain a better understanding of the history of imperialism and colonialism in the Congo.'
        wrong_answer
    end 

        system 'clear'

        $prompt = TTY::Prompt.new
        philosophy
        question2 = 'Which famous philospher said this quote - "God is dead! He remains dead! And we have killed him."'
        choices = ["Karl Marx", "Bertrand Russell", "Sigmund Freud", "Friedrich Nietzsche"]
        answer = $prompt.select(question2, choices, active_color: :magenta, help_color: :magenta)

    if answer == choices[3]
        sleep(3)
        totalscore << 1
        correct_answer
    else
        histbook << "'The Portable Nietzsche' by Walter Kaufmann is a great appetizer for anyone wanting to learn more about Nietzsche's philosophy and his famous ideas." 
        wrong_answer
    end 

        system 'clear'

        $prompt = TTY::Prompt.new
        philosophy
        question3 = '"The Prince" was written by which philosopher?'
        choices = ["John Locke", "Niccolo Machiavelli", "Emmanuel Kant", "John Rawles"]
        answer = $prompt.select(question3, choices, active_color: :magenta, help_color: :magenta)

    if answer == choices[1]
        sleep(3)
        totalscore << 1
        correct_answer
    else
        histbook << "'The Prince' by Machiavelli is a very short primary source book which is a must read for anyone wanting to understand the origins of modern day Western political philosophy." 
        wrong_answer
    end 

        system 'clear'

        $prompt = TTY::Prompt.new
        philosophy
        question4 = 'Franz Fanon focussed his writings on being critical of the colonization of which African country?'
        choices = ["Namibia", "Congo", "Libya", "Algeria"]
        answer = $prompt.select(question4, choices, active_color: :magenta, help_color: :magenta)

    if answer == choices[3]
        sleep(3)
        totalscore << 1
        correct_answer
    else
        histbook << "Fanon wrote an amazing book titled 'The Wretched of the Earth' which analyses the experience of the Algerian people under French occupation in the twentieth century. This would be a great book to read."
        wrong_answer
    end 

        system 'clear'
        $prompt = TTY::Prompt.new
        philosophy
        question5 = 'The twentieth century dystopian classic novel "A Brave New World" was written by which author?'
        choices = ["George Orwell", "Aldous Huxley", "Leo Tolstoy", "Dostoyevsky"]
        answer = $prompt.select(question5, choices, active_color: :magenta, help_color: :magenta)

    if answer == choices[1]
        sleep(3)
        totalscore << 1
        correct_answer

    else
        histbook << "You would learn a lot about dystopian fiction novels and the thinking of particular writers and philosophers in the early twentieth century by reading Aldous Huxley's 'A Brave New World."
        wrong_answer
    end 

        system 'clear'
        $prompt = TTY::Prompt.new
        philosophy
        question6 = 'Marcus Aurelius was a practicing muslim. True or False?'
        choices = %w(True False)
        answer = $prompt.select(question6, choices, active_color: :magenta, help_color: :magenta)

    if  answer == choices[1]
        sleep(3)
        totalscore << 1
        correct_answer

    else
        histbook << 'The one and only book which is a must read to learn about Marcus Aurelius is the book he wrote titled "Meditations".'
        wrong_answer
    end 

        system 'clear'

        $prompt = TTY::Prompt.new
        philosophy
        question7 = 'The book "Walden" was written by which author?'
        choices = ["Ralph Waldo Emerson", "Mark Twain", "Henry David Thoreau", "Charles Dickens"]
        answer = $prompt.select(question7, choices, active_color: :magenta, help_color: :magenta)

    if  answer == choices[2]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
    else
        sleep(3)
        histbook << 'A must read book about transcendentalism and ideas of freedom from state power is "Walden" by Henry David Thoreau. An absolute classic in ninteenth century literature.'
        puts "\nWrong answer."
        sleep(3)
    end 

        finishphilosophy
        philosophy
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
            puts "\n"
            bar = TTY::ProgressBar.new("Loading Book Recommendations [:bar]", total: 30)
            30.times do
            sleep(0.05)
            bar.advance(1)
            end 
            puts "\n\n"
            sleep(3)
            histbook.each do |item|
            puts "- #{item}"
            puts "\n" 
            sleep(3)
        end 
        
        else  
            sleep(3)
            puts "Please wait while we take you back to the main menu...."
            sleep(4)
            system 'clear'
        end 

    else  
        philosophy
        puts "Please wait while we take you back to the home menu...."
        sleep(4)
        system 'clear'
    end    
    
    puts "You must decide whether to play another quiz, or leave the application\n".colorize(:red)
end 

def finishphilosophy
    system 'clear'
    philosophy
    sleep(2)
    puts "Congratulations on finishing the quiz!"
    sleep (3)
    system 'clear'
    philosophy
    puts "Please wait while we calculate your results...."
    puts "\n"
    bar = TTY::ProgressBar.new("Loading [:bar]",
    total: 30)
    30.times do
    sleep(0.05)
    bar.advance(1)
    end 
    sleep(5)
    system 'clear'
end 

def bookrecommend
    booktitle
    puts "Our quiz has discovered some gaps in your knowledge that could be easily filled in if you were to do some extra readings.\n\nBased on the answer/s you got incorrect, we have a list of books you may like to read to fill in the gaps.\n\n"
end 




