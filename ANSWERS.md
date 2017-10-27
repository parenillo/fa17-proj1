# Q0: Why is this error being thrown?

This error is being thrown because there isn't a Pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The random Pokemon appear as a line of text.
The common factor between all the possible Pokemon that appear is that they're all the original starters.

# Question 2: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It makes a medium button with the text "Throw a Pokeball!" that does a patch to the capture path with the param being the pokemon passed in.

# Question 3: What would you name your own Pokemon?

I'd name my own Pokemon Bagel.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed trainer_path(current_trainer) into the redirect_to. The path needed which trainer path to redirect to.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

@pokemon is what we get after doing Pokemon.create.
If the validations fail and the pokemon isn't saved, there will be an error in the errors instance method.
The full_messages method lets us view the error messages in the form that would be shown to a user as an array.
The to_sentence method converts the array to a sentence for us to display.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
