require "tty-prompt"
require_relative "./answers.rb"
require_relative "./titles.rb"

def geographyquiz
        totalscore = []
        histbook = []
        $prompt = TTY::Prompt.new
        geographytitle
        question1 = 'Which of the following African countries IS located in the "Horn of Africa"?'
        choices = %w(Somalia Mali Nigeria Liberia)
        answer = $prompt.select(question1, choices, active_color: :green, help_color: :green)
    
    if answer == choices[0]
        sleep(3)
        totalscore << 1
        correct_answer

    else
        histbook << 'To learn more about countries situated in the Horn of Africa you may want to read a book such as "The Horn of Africa: State Formation and Decay" by Christopher Clapham.'
        wrong_answer
    end 

        system 'clear'
    
        $prompt = TTY::Prompt.new
        geographytitle
        question2 = 'Damascus is the capital of which country?'
        choices = %w(Syria Lebanon Israel UAE)
        answer = $prompt.select(question2, choices, active_color: :green, help_color: :green)
    
    if answer == choices[0]
        sleep(3)
        totalscore << 1
        correct_answer

    else
        histbook << '"Syria: A Modern History" by David W. Lesch would be a great starting point to increase your knowledge about Syrian history and politics.'
        wrong_answer
    end 
    
        system 'clear'
    
        $prompt = TTY::Prompt.new
        geographytitle
        question3 = 'Which of these countries in Southeast Asia IS landlocked (no ocean on its borders)?'
        choices = %w(Myanmar Cambodia Malaysia Laos)
        answer = $prompt.select(question3, choices, active_color: :green, help_color: :green)
    
    if answer == choices[3]
        sleep(3)
        totalscore << 1
        correct_answer

    else
        histbook << 'The perfect book to learn about Southeast Asian geography, and other important information would be the book titled "Southeast Asia: An Introductory History" written by Milton Osborne.'
        wrong_answer
    end 

        system 'clear'
    
        $prompt = TTY::Prompt.new
        geographytitle
        question4 = 'Which city has the largest population in the world?'
        choices = %w(Mumbai Tokyo Dehli China Shanghai)
        answer = $prompt.select(question4, choices, active_color: :green, help_color: :green)
    
    if answer == choices[1]
        sleep(3)
        totalscore << 1
        correct_answer

    else
        histbook << 'To learn more about Japan, and Tokyo, we recommend reading "The Making of Modern Japan" by Marius B. Jansen.'
        wrong_answer
    end 

        system 'clear'
    
        $prompt = TTY::Prompt.new
        geographytitle
        question5 = 'What is the capital of Pakistan?'
        choices = %w(Lahore Tehran Islamabad Peshawar)
        answer = $prompt.select(question5, choices, active_color: :green, help_color: :green)
    
    if answer == choices[2]
        sleep(3)
        totalscore << 1
        correct_answer

    else
        histbook << "Lawrence Ziring's book titled 'Pakistan in the Twentieth Century' would be a great introductory book to learn more important geographical, political and historical information about Pakistan"
        wrong_answer
    end 
        
        system 'clear'
    
        $prompt = TTY::Prompt.new
        geographytitle
        question6 = 'Yosemite National Park is located in which state in the USA?'
        choices = %w(California Arizona Washington Oregon)
        answer = $prompt.select(question6, choices, active_color: :green, help_color: :green)
    
    if  answer == choices[0]
        sleep(3)
        totalscore << 1
        correct_answer

    else
        histbook << '"Historic Yosemite National Park" written by Tracey Salcedo is our recommendation for people wanting to improve their knowledge on the history of Yosemite National Park, and to understand its geographical importance in the state of California.'
        wrong_answer
    end 

        system 'clear'
    
        $prompt = TTY::Prompt.new
        geographytitle
        question7 = 'What is the name of the deepest lake in the world?'
        choices = ["Crater Lake", "Caspian Sea", "Lake Vostok", "Lake Baikal"]
        answer = $prompt.select(question7, choices, active_color: :green, help_color: :green)
    
    if  answer == choices[3]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
    else
        sleep(3)
        histbook << 'We recommend reading "Sacred Sea" written by Peter Thompson to understand the beauty and significance of Lake Baikal in Russia.'
        puts "\nWrong answer."
        sleep(3)
    end 
        finishgeography
        geographytitle
        puts "Your total score is #{totalscore.sum} out of 7"
        sleep (5)
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
        geographytitle
        puts "Please wait while we take you back to the home menu...."
        sleep(4)
        system 'clear'
    end
    puts "You must decide whether to play another quiz, or leave the application\n".
    colorize(:red)
    
end 

def finishgeography
    system 'clear'
    geographytitle
    sleep(2)
    puts "Congratulations on finishing the quiz!"
    sleep (3)
    system 'clear'
    geographytitle
    puts "Please wait while we calculate your results...."
    puts "\n"
    bar = TTY::ProgressBar.new("Loading [:bar]",    total: 30)
    30.times do
    sleep(0.05)
    bar.advance(1)
    end 
    sleep(3)
    system 'clear'
end 

def bookrecommend
    booktitle
    puts "Our quiz has discovered some gaps in your knowledge that could be easily filled in if you were to do some extra readings.\n\nBased on the answer/s you got incorrect, we have a list of books you may like to read to fill in the gaps.\n\n"
end 