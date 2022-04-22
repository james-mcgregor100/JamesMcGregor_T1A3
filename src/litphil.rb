require 'colorize'
require_relative "./answers.rb"

def litandphilosophyquiz
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
        histbook << 'We recommend going straight to the primary source and reading "The Heart of Darkness" by Joseph Conrad to gain a better understanding of the history of imperialism and colonialism in the Congo.'
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
        histbook << "'The Portable Nietzsche' by Walter Kaufmann is a great appetizer for anyone wanting to learn more about Nietzsche's philosophy and his famous ideas." 
        wrong_answer
    end 
        system 'clear'

        $prompt = TTY::Prompt.new
        question3 = '"The Prince" was written by which philosopher?'
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
        histbook << "'The Prince' by Machiavelli is a very short primary source book which is a must read for anyone wanting to understand the origins of modern day Western political philosophy." 
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
        histbook << "Fanon wrote an amazing book titled 'The Wretched of the Earth' which analyses the experience of the Algerian people under French occupation in the twentieth century. This would be a great book to read."
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
        histbook << "You would learn a lot about dystopian fiction novels and the thinking of particular writers and philosophers in the early twentieth century by reading Aldous Huxley's 'A Brave New World."
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
        histbook << 'The one and only book which is a must read to learn about Marcus Aurelius is the book he wrote titled "Meditations".'
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
        histbook << 'A must read book about transcendentalism and ideas of freedom from state power is "Walden" by Henry David Thoreau. An absolute classic in ninteenth century literature.'
        puts "\nWrong answer."
        sleep(3)
    end 
end 