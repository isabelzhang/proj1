# Q0: Why is this error being thrown?
There is no Pokemon model yet. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Random pokemon are appearing because home_controller.rb's index method contains ".sample" which basically chooses randomly from an array.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It makes a button that says "Throw a Pokeball!" and routes us to the id of the pokemon that is displayed. 

# Question 3: What would you name your own Pokemon?
Jojomon

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in :back which is a path back to the form that called it. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
flash[:error] gives you all the constants stored within each request. So when you flash the errors, it shows you the errors that you encountered. 

# Give us feedback on the project and decal below!
Very fun. It would be cool to have some direction for HTML on here as well since I had originally wanted to add alot of pictures on here to enhance the home page and see if I can cycle through with matching images of the pokemon but I have no idea how to do that. I think it would be a cool feature.

# Extra credit: Link your Heroku deployed app
https://still-sands-24160.herokuapp.com/