# TwO-O-Player Math Game

Welcome to the TwO-O-Player Math Game, a simple two-player math quiz game built in Ruby. This is simple math game to experiment who can answer questions correctly and retain the most lives!

## Table of Contents

- [Features](#features)
- [How to Play](#how-to-play)
- [Project Structure](#project-structure)



## Features

- Two-player math game.
- Randomly generated addition questions.
- Players take turns answering questions.
- Players lose lives for incorrect answers.
- The game ends when one player runs out of lives.
- Simple and clean user interface.

## How to Play

1. Clone the repository to your local machine.

```bash
git clone https://github.com/Rgit915/TwO-O-Player.git
cd TwO-O-Player
```
Run the game by executing the `main.rb` file.
```bash

ruby main.rb
```
Follow the on-screen prompts to:

Enter the names of Player 1 and Player 2.
Answer math questions by inputting the result of the addition operation.
Players take turns answering questions.
Incorrect answers result in the loss of a life.
The game continues until one player runs out of lives. The player with lives remaining wins.

## Project Structure
The project is organized into separate Ruby classes:

`main.rb`: The main game script that controls the game flow.

`player.rb` : Defines the Player class to manage player information.

`game.rb`: Contains the Game class to manage the game state.

`question.rb`: Includes the Question class, responsible for generating math questions.

`ui_handler.rb`: Handles user input and output, keeping the UI clean and modular.