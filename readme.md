
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

4. Make sure you have Bundler installed. This will allow you to download and use Ruby gems. 
   
   If you haven't got Bundler installed, you can type in - 

   ```ruby gem install bundler```

5. Once you have installed the Bundler Gem, you will need to install the specific Ruby gems. In order to do this you must ty

6. 

### Dependencies Required

### System/Hardware Requirements 

### How to Use Command Line Arguments 


