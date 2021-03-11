# Queen Attack

Given the position of two queens on a chess board, indicate whether or not they
are positioned so that they can attack each other.

In the game of chess, a queen can attack pieces which are on the same
row, column, or diagonal.

A chessboard can be represented by an 8 by 8 array.

So if you're told the white queen is at (3, 4) and the black queen at
(6, 7), then you'd know you've got a set-up like so:
```text
 ┌───┬───┬───┬───┬───┬───┬───┬───┐
1│   │   │   │   │   │   │   │   │
 ├───┼───┼───┼───┼───┼───┼───┼───┤  
2│   │   │   │   │   │   │   │   │
 ├───┼───┼───┼───┼───┼───┼───┼───┤
3│   │   │   │ W │   │   │   │   │
 ├───┼───┼───┼───┼───┼───┼───┼───┤  
4│   │   │   │   │   │   │   │   │
 ├───┼───┼───┼───┼───┼───┼───┼───┤  
5│   │   │   │   │   │   │   │   │
 ├───┼───┼───┼───┼───┼───┼───┼───┤  
6│   │   │   │   │   │   │ B │   │
 ├───┼───┼───┼───┼───┼───┼───┼───┤  
7│   │   │   │   │   │   │   │   │
 ├───┼───┼───┼───┼───┼───┼───┼───┤  
8│   │   │   │   │   │   │   │   │
 └───┴───┴───┴───┴───┴───┴───┴───┘
   1   2   3   4   5   6   7   8

```




You'd also be able to answer whether the queens can attack each other.
In this case, that answer would be yes, they can, because both pieces
share a diagonal.

## Exception messages

Sometimes it is necessary to raise an exception. When you do this, you should include a meaningful error message to
indicate what the source of the error is. This makes your code more readable and helps significantly with debugging. Not
every exercise will require you to raise an exception, but for those that do, the tests will only pass if you include
a message.

To raise a message with an exception, just write it as an argument to the exception type. For example, instead of
`throw("Error")`, you should write:

```julia
throw("Meaningful message indicating the source of the error")
```
## Version compatibility
This exercise has been tested on Julia 1.2.

## Submitting Exercises

Note that, when trying to submit an exercise, make sure the solution is in the `$EXERCISM_WORKSPACE/julia/queen-attack` directory.

You can find your Exercism workspace by running `exercism debug` and looking for the line that starts with `Workspace`.

For more detailed information about running tests, code style and linting,
please see [Running the Tests](http://exercism.io/tracks/julia/tests).

## Source

J Dalbey's Programming Practice problems [http://users.csc.calpoly.edu/~jdalbey/103/Projects/ProgrammingPractice.html](http://users.csc.calpoly.edu/~jdalbey/103/Projects/ProgrammingPractice.html)

## Submitting Incomplete Solutions

It's possible to submit an incomplete solution so you can see how others have completed the exercise.
