require 'colorize'
require_relative "./answers.rb"

def litandphilosophy
        totalscore = []
        $prompt = TTY::Prompt.new
        question1 = 'The book "Heart of Darkness" written by Joseph Conrad was set in which African country?'
        choices = %w(Congo Zimbabwe Ethiopia Kenya)
        answer = $prompt.select(question1, choices, active_color: :bright_yellow, help_color: :bright_yellow)

    if answer == choices[0]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        wrong_answer
    end 
        system 'clear'

        $prompt = TTY::Prompt.new
        question2 = 'Which famous philospher said this quote - "God is dead! He remains dead! And we have killed him."'
        choices = ["Karl Marx", "Bertrand Russell", "Sigmund Freud", "Friedrich Nietzsche"]
        answer = $prompt.select(question2, choices, active_color: :bright_yellow, help_color: :bright_yellow)

    if answer == choices[3]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        wrong_answer
    end 
        system 'clear'

        $prompt = TTY::Prompt.new
        question3 = '"The Prince" was written by which  philosopher?'
        choices = ["John Locke", "Niccolo Machiavelli", "Emmanuel Kant", "John Rawles"]
        answer = $prompt.select(question3, choices, active_color: :bright_yellow, help_color: :bright_yellow)

    if answer == choices[1]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        wrong_answer
    end 

        system 'clear'

        $prompt = TTY::Prompt.new
        question4 = 'Franz Fanon focussed his writings on being critical of the colonization of which African country?'
        choices = ["Namibia", "Congo", "Libya", "Algeria"]
        answer = $prompt.select(question4, choices, active_color: :bright_yellow, help_color: :bright_yellow)

    if answer == choices[3]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        wrong_answer
    end 

        system 'clear'

        $prompt = TTY::Prompt.new
        question5 = 'The twentieth century dystopian classic novel "A Brave New World" was written by which author?'
        choices = ["George Orwell", "Aldous Huxley", "Leo Tolstoy", "Dostoyevsky"]
        answer = $prompt.select(question5, choices, active_color: :bright_yellow, help_color: :bright_yellow)

    if answer == choices[1]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        wrong_answer
    end 

        system 'clear'

        $prompt = TTY::Prompt.new
        question6 = 'Marcus Aurelius was a practicing muslim. True or False?'
        choices = %w(True False)
        answer = $prompt.select(question6, choices, active_color: :bright_yellow, help_color: :bright_yellow)

    if  answer == choices[1]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        wrong_answer
    end 

        system 'clear'

        $prompt = TTY::Prompt.new
        question7 = 'The book "Walden" was written by which author?'
        choices = ["Ralph Waldo Emerson", "Mark Twain", "Henry David Thoreau", "Charles Dickens"]
        answer = $prompt.select(question7, choices, active_color: :bright_yellow, help_color: :bright_yellow)

    if  answer == choices[2]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        sleep(3)
        puts "\nWrong answer."
        sleep(3)
    end 
end 