rock = rock
scissors = scissors 
paper = paper 

computer_select = [scissors, paper, rock, scissors, paper, rock, scissors, paper, rock, scissors, paper, rock]
score = 0
prompt = TTY::Prompt.new

while user_score || computer_score <= 3 do 
    user_select = prompt.select("What quiz would you like to play? ", ["paper", "scissors", "rock"])
    if user_select == scissors do 
        puts "You selected scissors....."
        sleep(2)
        computer_select.shuffle
        puts "Waiting for computer to make its move"
        computer_answer = computer_select.sample
        && computer_select = rock 
        puts "You Loose. Rock beats scissors"
        computer_score = score + 1

    if user_select = scissors && computer_select = paper
        puts "You Win. Scissors beats paper!"
        user_score = user_score + 1
    if user_select = scissors && computer_select = scissors
        puts "Draw!"

    if user_select = paper && computer_select = rock 
        puts "You Win! Paper beats rock"
        score = score + 1
    if user_select = paper && computer_select = paper
        puts "Draw!"
    if user_select = paper && computer_select = scissors
        puts "You Lose! Scissor beats papers"


    if user_select = rock && computer_select = rock 
        puts "Draw!"
    if user_select = rock && computer_select = paper
        puts "You Loose. Paper beats rock."
    if user_select = rock && computer_select = scissors
        puts "You Win! Rock beats scissors."

