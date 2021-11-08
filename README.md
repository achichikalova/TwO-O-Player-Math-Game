# TwO-O-Player-Math-Game

2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 100. The player whose turn it is prompted the question and must answer correctly or lose a life.

# Details
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game is output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game is announce who won and what the other player’s score is.

# Example prompt

```Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously? No!
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
Player 2: What does 2 plus 6 equal?
> 8
YES! You are correct.
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
... some time later ...
Player 1 wins with a score of 1/3
----- GAME OVER -----
Good bye!
```