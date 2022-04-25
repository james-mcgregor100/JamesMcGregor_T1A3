
# JamesMcGregor_T1A3 - Trivia Terminal App

# The Application

The application chosen for this assignment was a basic 'trivia' game which runs in the terminal, using the 
Ruby programming language to run the application. When the application is opened, the user is greeted by a 
welcome message, and then they are informed that there may be users who do not enjoy trivia, and they are fre
to leave if they wish. They are provided with an option to play the trivia game, or to exit the application.

The application then takes the user to the main quiz menu which provides a list of topics that the user can 
choose from, as well as another 'exit' option for the user to exit this application if they wish to do so. 
Once the user chooses a topic to play, the chosen topic will be loaded, and the quiz begins. The user is tkae
through a small 7 question quiz, and they accumulate 1 point for every answer that the user answers correctly
If the user provides an incorrect answer, the application will make a note of this and will save the name of 
book which is related to the question, and will be used to provide a list of book recommendations for the use
at the end of the quiz. 

Once the user has ended the quiz, the user will be provided with a total score which was accumulating 
throughout the quiz. After the quiz results have been display the user will be given a choice of two 
directions to take. Firstly, if the user scores 100% on the quiz they will be asked if they wish to play 
another quiz from another topic, or if they would like to exit the application. If a user does not score 100%
on the quiz, they will be asked by the application if they would like to view the book recommendations that 
the program has generated for them. The user can either select to view the books, or not. If they do not, the
will be taken back to the main menu of quiz topics.

If the user decides to view the book recommendations, the program will produce a list of recommendations base
on how many answers the user answered in correctly. If the user answered one question incorrectly, they will 
receive 1 book recommendation relating to that answer. If they answer all questions incorrectly, they will 
receive 7 book recommendations. Once the book recommendations the user will be provided, the user will be 
asked whether they want to play another quiz, or if they would like to exit the application.

# Github Link - R4 
https://github.com/james-mcgregor100/JamesMcGregor_T1A3 

# Code Style Guide and Styling Conventions - R5

While writing the code for this application I attempted to adhere to AirBnb's Ruby Style Guide as much as possible. Unfortunately, there are still some areas of the code in this application that will be incorrect and considered 'bad' by AirBnb's metrics. However, I attempted to ensure that I follow the instructions set out, where possible. A lot of Ruby's Style Guide did not apply to my application, as my application did not use many of the code examples found in the Style Guide, however, I did try to use the code examples in the Style Guide that which were related to the code in my project. 

The documentation for AirBnb's Style Guide can be found here - https://github.com/airbnb/ruby 

My application used three basic styling recommendations found in AirBnb's Guide, which included - 

1. When there are logical breaks in the code, make sure to put a space between the lines of code to allow for better readability. 

2. Unless there are really tricky parts of code that is not easily understood, there is no need to describe the code. Always assume that the person reason the code is a lot better at using the code than you are. So they should be able to easily understand what's happening when reading your code. 
   
3. Make sure to put line breaks after and 'end'. Do not start another line of code directly after the 'end' found at the end of a conditional control structure, a method, a class, or when iterating over an array or hash. 

# List of Features Used in Application - R6
### Feature 1 - Using TTY Prompt for Error Handling
When deciding how to create an application which would minimize and mitigate input errors occuring, I did not know how I was going to use error handling with standard input statements, such as ```ruby gets.chomp```. I found that there were too many ways that a user would break the application when using ```ruby gets.chomp```, and instead decided to opt for using the TTY Prompt. I felt that the TTY Prompt was the best way to ensure error handling was taken care of when a user needed to interact with the application and provide input. The TTY Prompt forces the user to select only the input choices that the program provides them. Seeing as this application requires the user to interact throughout many stages of the application, the TTYPrompt worked well to reduce errors occuring. 

Below is a code snippet from some of the TTY Prompts used as a 'feature' throughout the application - 


#### Example 1 - Error Handling With TTY Prompt

```ruby 
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
    histbook << 'You may want to read "The European Union (Politics and Policies)" by Jonathan Olsen to 
learn more about the European Union.'
    wrong_answer
end 
``` 

Example 1 above ensures that the user is forced to choose between four choices when answerin the question in the quiz. They are not allowed to type in an answer of their choice, rather TTY Prompt forces the user (and thus reduces the chance of errors occuring) to choose between the options provided. The TTY Prompt is effective in this situation because there are a range of errors that could occur when the user is entering in the choices. This keeps the quiz tightly controlled and keeps the user within a framework of how they can answer the question, and prevents them from typing in simple errors into the input section.

#### Example 2 - Error Handling With TTY Prompt

```ruby 
$prompt = TTY::Prompt.new
question = 'Would you like to view our book recommendations?'
choices = %w(Yes No)
answer = $prompt.select(question, choices, active_color: :red, help_color: :red)
``` 

Example 2 above is used in a different part of the application compared to Example 1. Example 2 is used to provide 'yes' or 'no' input. The TTY Prompt is effective in handling errors for this situation as the user could type in a large variation of answers to give answers to 'Yes' or 'No'. For example, the user may simply want to type in 'Y' or 'N' for the answer, which would throw an error. Similarly, the user may type in 'y' and 'n', or they may type in 'yesss' or 'noooo' to give their answer, which would definitely throw an error. Therefore, a decision was made to use TTY Prompt to try and avoid this kind of problem.

### Feature 2 - Conditional Control Structure 

#### Example 1 - Case Statement

```ruby 
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
```
In Example 1 above, a 'Case Statement' was used as a control structure for when the user was required to choose between a list of quiz topics. The case statement in this example above ensurs that the user is forced onto the next step in the program, whether it be 'loading' the quiz after 'History' is chosen, or if the user is asked if they wish to 'stay or leave' after the 'history quiz' has been completed. The Case Statement in this example has worked perfectly for this application, and is considered to be one of the foundational control structures used to hold the application together. 

#### Example 2 - If Statement

```ruby 
if  answer == choices[2]
    sleep(3)
    totalscore << 1
    correct_answer
    
else
    histbook << "You would be able to fill in your gaps about Iraq's ancient history by reading
'Civilizations of Ancient Iraq' by Benjamin and Karen Foster."
    wrong_answer
end 
``` 
In Example 2 above, a simple 'If Statement' has been used to control the way the program accepts user input while the quiz is being played by the user. This 'If Statement' checks whether the uses answer is exactly the same as the element in the 'choices' array located in index position '2'. If it is, the program will add a score of 1 point to the array called 'totalscore' and it will execute a method titled 'correct_answer'. This effectively controls what happens in the program once the user selects a correct answer whilst playing the quiz. The code that is run in the 'If' section is very important as it allows the program to record and store the points of the user. This will be used later on in the game once the user has finished playing the quiz.

If the user selects the wrong answer, the 'else' part of the 'If Statement' will be executed, and the program will add the long string (seen above) which is a book recommendation, into the array titled 'histbook'. This 'else' part of the control structure is very important in the context of this quiz as it tells the program that the user is answering questions incorrectly, and it will need to provide book recommendations for the user at the end of the quiz. Therefore, as each question is answered incorrectly, the program is ordered to execute the long string to be put into the array. Similar to the 'total score' data, the 'histbook' data will also be stored and retrieved later on when the user finishes playing the quiz. 


### Feature 3 - Use of Variables 




## Implementation Plan - R7

insert trello board here

## Design Help Documentation / Instructions - R8

### How to Install Application

1. Make sure you have Ruby installed on your computer. Please download Ruby here before starting - https://www.ruby-lang.org/en/downloads/ 

2. Please also make sure Git is installed on your computer. Please download before starting - https://git-scm.com/downloads 

3. You must then clone this Github repository to a folder on your computer. Please go to this Github link - https://github.com/james-mcgregor100/JamesMcGregor_T1A3 

Once you have opened the link, you will see a green button which says "Code". Please click on that to clone the repository. If you can't find the "Code" button, you can copy and past this repo -> ```git@github.com:james-mcgregor100/JamesMcGregor_T1A3.git```

4. After cloning the repo, please open up your Terminal on your computer. 

5. Move to the directory named ```/src```. 
   
6. Run the bash script to open the application. The bash script must be written exactly as follows - 

```./run_app.sh```

This will run the application, and also install the required gems which are used throughout the program. The gems that will be installed are - 

```gem "colorize", "~> 0.8.1"```

```gem "tty-prompt"```

```gem "tty-progressbar", "~> 0.18.2"```

```gem "tty-spinner"```

This script should work perfectly, however, if you are having problems running the bash script above, you might need to allow the script to be executable. If the script is NOT working, please enter this into the command line, before trying to run the script again - 

```chmod +x run_app.sh```


### System/Hardware Requirements 

This program should run on most modern computers without any problem.

The program was created using Ruby version 2.7.1. It is not gauranteed that this app will run on other versions of Ruby. 

### How to Use Command Line Arguments 

The comman line argument will run automatically when the application is open. A simple message will be displayed onced the user opens the application.

# Extra Information
Unfortunately due to time constraints I was not able to implement everything in the application that I would have liked to. Initially I had ideas of also adding in two extra menu options to play two extra games. One game was a simple tic tac toe game, and the other one was scissors, paper, rock. However, Initially I started to create the logic for the scissors, paper, rock game, and also tic tac toe, but I was unable to finish creating them, and had to just settle for making the basic trivia game. 

In the future I would like to make some improvements to the game. Firstly I would like to increase the length of each quiz, and make each quiz get progressively more difficult as user moves through the questions. This would add more complexity to the application and make the user experience more exciting. Moreover, I would like to create either a YAML or TXT file with hundreds or thousands of questions (and related answers) so that the application can pull random questions from the YAML or TXT files each time a quiz is loaded. Initially I began to experiment using a YAML file to store the questions and answers for the application, but I was unable to make the application work correctly using correct logic. Therefore, in the future I would like to increase the complexity of the application by integrating the use of a YAML or TXT file.

