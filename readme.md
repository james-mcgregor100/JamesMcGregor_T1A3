
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

## List of Features Used in Application - R6
### Feature 1 - Using TTY Prompt for Error Handling
When deciding how to create an application which would minimize and mitigate input errors occuring, I did not know how I was going to use error handling with standard input statements, such as ```ruby gets.chomp```. I found that there were too many ways that a user would break the application when using ```ruby gets.chomp```, and instead decided to opt for using the TTY Prompt. I felt that the TTY Prompt was the best way to ensure error handling was taken care of when a user needed to interact with the application and provide input. The TTY Prompt forces the user to select only the input choices that the program provides them. Seeing as this application requires the user to interact throughout many stages of the application, the TTYPrompt worked well to reduce errors occuring. 




### Feature 2

### Feature 3

### Feature 4

## Implementation Plan - R7

insert trello board here

## Design Help Documentation / Instructions - R8

### How to Install Application

1. Make sure you have Ruby installed on your computer. Please download Ruby here before starting - https://www.ruby-lang.org/en/downloads/ 

2. Please also make sure Git is installed on your computer. Please download before starting - https://git-scm.com/downloads 

3. You must then clone this Github repository to a folder on your computer. Please go to this Github link - https://github.com/james-mcgregor100/JamesMcGregor_T1A3 

Once you have opened the link, you will see a green button which says "Code". Please click on that to clone the repository. If you can't find the "Code" button, you can copy and past this repo -> git@github.com:james-mcgregor100/JamesMcGregor_T1A3.git 

4. After cloning the repo, please open up your Terminal on your computer. 

5. Move to the directory named 'src'. 
   
6. Run the bash script to open the application. The bash script must be written exactly as follows - 

```ruby ./run_app.sh```

This will run the application, and also install the required gems which are used throughout the program. The gems that will be installed are - 

gem "colorize", "~> 0.8.1"

gem "tty-prompt"

gem "tty-progressbar", "~> 0.18.2"

gem "tty-spinner"


### Dependencies Required

### System/Hardware Requirements 

### How to Use Command Line Arguments 

The application should now run when using the bash script. 


# Extra Information
Unfortunately due to time constraints I was not able to implement everything in the application that I would have liked to. Initially I had ideas of also adding in two extra menu options to play two extra games. One game was a simple tic tac toe game, and the other one was scissors, paper, rock. However, Initially I started to create the logic for the scissors, paper, rock game, and also tic tac toe, but I was unable to finish creating them, and had to just settle for making the basic trivia game. 

In the future I would like to make some improvements to the game. Firstly I would like to increase the length of each quiz, and make each quiz get progressively more difficult as user moves through the questions. This would add more complexity to the application and make the user experience more exciting. Moreover, I would like to create either a YAML or TXT file with hundreds or thousands of questions (and related answers) so that the application can pull random questions from the YAML or TXT files each time a quiz is loaded. Initially I began to experiment using a YAML file to store the questions and answers for the application, but I was unable to make the application work correctly using correct logic. Therefore, in the future I would like to increase the complexity of the application by integrating the use of a YAML or TXT file.

