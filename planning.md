# TwO-O-Player Math Game

### Description
A 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Planning
# Player

**Brief Description:**
- The Player class represents a player in the math game.

**Role:**
- Manages player information, such as name and remaining lives.
- Handles player-specific actions, like reducing lives and checking if the player is still alive.

**Relevant Information:**
- Name: The name of the player.
- Lives: The number of lives a player has (starts at 3).

**Initialization:**
- The Player class is initialized with a player's name.

**Public Methods:**
1. `reduce_life`
   - Role: Reduces the player's remaining lives by 1.
   - Parameters: None.
   - Returns: None.

2. `is_alive?`
   - Role: Checks if the player is still alive (has remaining lives).
   - Parameters: None.
   - Returns: Boolean (true if the player is alive, false otherwise).

# Game

**Brief Description:**
- The Game class manages the game's state and player turns.

**Role:**
- Manages the state of the game, including player information.
- Handles switching between players during the game.

**Relevant Information:**
- Current Player: The player whose turn it is.

**Initialization:**
- The Game class is initialized with two player objects (player1 and player2).

**Public Methods:**
1. None for now, as this class primarily manages the game state.

# Question

**Brief Description:**
- The Question class generates math questions for the game.

**Role:**
- Generates random math questions.
- Checks if a player's answer to the question is correct.

**Relevant Information:**
- Num1 and Num2: Random numbers used to create the question.
- Answer: The correct answer to the question.

**Initialization:**
- The Question class is initialized without any parameters.

**Public Methods:**
1. `ask_question(name)`
   - Role: Asks a math question to the player.
   - Parameters: `name` (name of the player to ask the question to).
   - Returns: None.

2. `is_correct?(input)`
   - Role: Checks if the player's answer is correct.
   - Parameters: `input` (the player's answer to the question).
   - Returns: Boolean (true if the answer is correct, false otherwise).

# UIHandler

**Brief Description:**
- The UIHandler class (or module) handles user input and output.

**Role:**
- Provides methods for getting user input and displaying messages.
- Separates user interaction from the main logic of the game.

**Relevant Information:**
- None

**Initialization:**
- No initialization is required for this class (or module).

**Public Methods:**
1. `get_user_input(prompt)`
   - Role: Prompts the user for input and retrieves the input.
   - Parameters: `prompt` (the prompt message for the user).
   - Returns: User input as a string.

2. `display_message(message)`
   - Role: Displays a message to the user.
   - Parameters: `message` (the message to display).
   - Returns: None.
## Game Loop

The game loop, where each instance of the loop represents one player's turn, is contained within the `main.rb` file. This is where the core game flow is managed.

## Managing Current Player

The responsibility of managing the current player is assigned to the `Game` class. The `Game` class keeps track of the current player and switches between players as the game progresses.

## User I/O

The `UIHandler` class handles user input and output. It contains methods for getting user input and displaying messages to the user. This separation keeps the user interface logic clean and modular.

### Responsibilities Overview

- **main.rb:** Contains the game loop and orchestrates the game flow. It interacts with the `Game` class to switch players and with the `UIHandler` class for user input and output.

- **Game class:** Manages the game state, including the current player. It switches between players and ensures the game progresses correctly.

- **Player, Question:** These classes do not handle user input and output. They are focused on their specific responsibilities within the game logic, such as managing player data and generating questions.
