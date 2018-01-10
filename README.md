The simplest card game ever ... a Monday Motivation day (goal to complete this within a few hours)

Used for motivation and procrastination and play... break the manic monday
These notes are random thoughts as I mess around with this app.

Starting Step, create cards that match a simple playing deck, 4 suits, 13 cards 

Along the way, I am going to track the silly mistakes I make


While getting a page to render in root path...
1) Don't forget to restart the server after adding a model or route 
2) Root path should be root "cards#index" not root 'cards/#index'
3) Save your file 
4) Put some HTML in the page, in our case Index


Initial Steps

Started with a single model, cards, but after this link below, decided to use 2 models, deck and cards. 
https://stackoverflow.com/questions/2641329/programming-technique-how-to-create-a-simple-card-game
That ended up confusing me a bit, so I settled on a few methods, add hearts, add clubs, etc to make a deck.

That will be it for now, Part 1 - going to walk the dog and step away from the computer.

The idea is not so much to create a card game but make a better use of random. 
I used a deck of cards at home for painting my fireplace bricks picking random 4 colors based on suit.

I plan to set up some actions based on the cards selected. Experimental, a Monday project.  

Step 2 Tuesday (when it's - 20C outside)

I have decided to do a horoscope like ranking for mood, so we can select how many suits to put in a deck. If hearts is passion tasks, for example, I want to weight the heart suits.. playing around with task selection based on a deck of cards.

Added nested model for deck energy_levels

What I haven't figured out yet is how a user fits, I may make this a simple game on the landing page with canned decks, or create decks with each game. ... brainstorming 

Wait, there are only so many combinations of decks if you have 4 mood indicators... puzzle. Thinking about this.

After a bad case of lack of focus, I see that my ruby version has shuffle. Duh. Fisher-Yates shuffle is buit in. 

OK, now to learn a bit of how buttons are used to execute an action in a controller. 


