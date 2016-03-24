# Rock Paper Scissors Project

For our Week 02 project, we'll be building a *Rock Paper Scissors* game.

This is your first sizable project, and is your chance to put to use everything
we've done so far.

You'll have almost all day Thursday and Friday to work on this, as well as
Saturday and Sunday. I'd like to see your (completed-ish) project on Monday
morning.

## Summary

Start with Phase 0, then Phase 1, then Phase 2, then (if you have time)
consider working on Phase 3. Each phase has some discrete features or steps;
I'll suggest that you do those steps in order for Phases 0-2, but once you get
to Phase 3, the sky's the limit.

Along the way, make sure to:

+ Create frequent commits with descriptive commit messages
+ Clearly document and organize (or re-organize) your code
+ Make sensible decisions about how and when to approach a feature
+ Write tests for methods and classes (if you're comfortable with this, try
  test-driven development. If you're not comfortable yet with that, write your
  tests after the fact).

This project will require that you reorganize and refactor your code with some
frequency.

## A Quick Note

There does not exist an objectively "right" way to do this, nor an objectively
best way. There just exist ways, some of which are easier to work with than
others.

My expectation is that you'll get through Phases 0-2, and maybe knock off one or
two items from Phase 3. In general, what I am looking for is for you to do your
best to produce high-quality work, even if that comes at the expense of quantity
or breadth of features.

**Check in with me after each Phase.** Either I can do some code review, or you
can ask a classmate to do some code review (if you decide to take a break from
your project, post in Slack that you're available for code reviews and give it
10 minutes to look through someone else's code).

## Phase 0

**Level 0** is where we get things working at their most basic level.

1. Basic rock-paper-scissors game (no custom objects or classes just yet).
   Output should be sensibly formatted. Should only accept valid moves. Players
   only need to play a single round. The game should report the result of the
   round.

## Phase 1

In Phase 1, we start pulling out classes and building a slightly more robust
game. By the end of this phase, we'll have a solid foundation on which to build.

1. Player classes + overall driver method. Driver method should create players,
   tell the players to prompt for moves, and determine the winner. Players
   should keep track of their names and moves, and should still only accept
   valid moves. From the user’s perspective, the game should appear to work
   exactly the same.
   + Your `Player` class's methods should be tested.
2. Players should be able to play a best-of-n match, which will require you to
   keep track of each player’s score. (Hint: who should keep track of a given
   player's score? The driver? The player? Something else?)
3. Go back and provide method documentation for all of your classes and
   custom-written methods. If you wrote the class (or method), you gotta
   document it. Use TOMDOC-style documentation.
4. Go back and look at your `Player` class -- does each method adhere to the
   Single Responsibility Principle? Is there any unnecessary repetition? Are
   there any methods that are more than 5 lines long or that take more than 4
   parameters? Take a look at your driver -- are there methods there that don't
   adhere to the single responsibility principle? 

## Phase 2

**Phase 2** is all about object-oriented programming. We're going to create some
new objects so that each class is only responsible for one thing. Our program
(from the user's perspective) will not differ much between the end of Level 1
and each step of Level 2; all the new improvements are going to be behind the
scenes.

As you add new classes, don't forget to document them thoroughly and to write
tests as necessary. Periodically run your test suite to ensure that your program
still works as it should (similarly, don't forget to update your tests!).

1. The driver method is doing too much -- really, all it should do is create two
   players, tell them to play until they’re done (this should be a single method
   call), and then report the winner. Make this happen by way of creating a
   `Game` class; the driver method creates two players, creates the game, gives
   the players to the game, then tells the game to start. When the game is done,
   it reports its result back to the driver class. The only methods of the
   `Game` class that your driver should ever see are `new` and `play`. It is
   very likely that your `Game` class will have other methods, but the only
   methods that your driver should ever interact with are `new` and `play`.
2. As the `Game` class currently stands, both it and the players must know the
   rules for Rock-Paper-Scissors (players must know the list of possible moves,
   and the game must be able to determine who won a given round). Make it such
   that the `Game` class provides each player with a list of valid moves at the
   start of the game; then the players are responsible for simply making sure
   that whatever input they get from the user is included in that list of valid
   moves. Now the player objects don't need to know anything about the game
   they're playing other than the set of allowed moves.
3. The `Game` class is still doing too much (running the game, comparing player
   moves, etc.). Let’s create a `RuleSet` class (you can come up with a better
   name if you want) to which we can delegate the job of comparing moves to
   determine the round winner, and to which we can delegate the job of holding
   the list of valid moves. This means that neither the `Game` class nor the
   `Player` class will have to know anything about the rules of the game;
   they'll only have to be able to prompt the `Rules` class to settle things.

## Phase 3

**Phase 3** is where we start adding new user-facing features. As a bonus, most
of these new features will also require us to refactor or revise existing
classes. Throughout, make sure to keep your documentation current, to keep
updating your tests (and running them!), and to keep testing your program
manually. Not all of these problems are easily solved. You may do these in any
order and in any combination. You almost certainly will not have time to do all
of these.

Remember to update your documentation, to write tests, and to run your tests
periodically.

Consider checking in with Andrew before you start on each of these.

1. Add in an AI player class (this class should not inherit from `Player`, but
   should have the same public interface). With the exception of whatever
   process creates your Player or `Ai_Player` objects, no other class or object
   should need to know if a given player is human or AI-controlled. Some crucial
   questions:
  + Are players themselves responsible for knowing if they are human or AI
    controlled? Or is something else responsible for that?
  + Can you handle making a new player in your driver, or would it make sense to
    create a player
    [factory](http://en.wikipedia.org/wiki/Factory_(object-oriented_programming))
    to handle player creation?
  + Can you write your AI player code so that the `Rules` class and `Game` class
    don't need to change at all to accommodate both human and AI players (and in
    fact don't need to know how a given player is controlled)? This may require
    you to go back and revise your `Game` and `Rules` classes.
  + Given the methods that `Player` and `AI_Player` have in common, can you
    create a module to handle the shared methods and reduce duplication? (Hint:
    the answer is "Yes")
2. Add in the ability to play [*Rock Paper Scissors Lizard
   Spock*](http://www.samkass.com/theories/RPSSL.html) in a new class (which
   should have the same public interface as your `Rules` class did; you may wish
   to rename your `Rules` class to something like `RPS_Rules` to make it more
   clear). Your `Game` and `Player` classes should be able to interact with
   either ruleset (RPS or RPSLS) using the exact same methods and without ever
   having to know which ruleset they're using. Just like your `Player` and
   `AI_Player` objects are effectively interchangeable (if you did step 1
   above), your `RPS_Rules` and `RPSLS_Rules` classes (if you decide to name
   them that) should be effectively interchangeable. Make sure to write tests.
   If there are methods duplicated between both rulesets, go ahead and extract
   them into a module, which should be `include`d in both classes.
3. Unless you've been very thorough in writing your rulesets, probably the
   number of allowed inputs is pretty small. Fix this. If you have both RPS and
   RPSLS rulesets, consider writing another class whose job it is to interpret
   moves. Is it the job of the Rules classes to interpret moves, or would it
   make more sense to delegate that responsibility elsewhere?
4. Right now, most of your classes can do output to the console, and that output
   is ephemeral, i.e. it's lost once you close the terminal window. Create an
   "Outputter" class (maybe this needs a better name) which is responsible for
   all output (all other objects simply send their string to output to the
   Outputter class, instead of doing the output themselves). Can you make the
   outputter class do output to a text file? Can you create your outputter with
   options such that you can determine whether it outputs certain lines (for
   example: maybe you want the result of the game recorded to a file and output
   to the console and you want each individual move to only be output to the
   console) to either a file or to the console. See also if you can get the name
   of the output file to dynamically change. Depending on how far you choose to
   go, this problem is either of medium difficulty or very difficult.
5. Add in the ability to run tournaments with a traditional tournament bracket.
   This will probably require you to create a new class. Each match within the
   tournament should be represented by a new `Game` object. Think about how you
   want to reflect player scores, and think about how you want to be able to
   keep track of the tournament's progression.
6. Add in the ability for players to play *Tic-Tac-Toe*. The `Player` object
   public interface should not change. For bonus points, refactor your `Game`
   class so that both it and the player objects work exactly the same regardless
   of the game we're playing (this may require some significant refactoring).
7. Make up your own new feature, and put it into place.
