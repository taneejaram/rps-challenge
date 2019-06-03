# RPS Challenge

Tested infrastructure to see that everything had been set up correctly and that the web page ran.
```
# feature 'Testing infrastructure' do
#   scenario 'Check the app can run and check page content' do
#     visit ('/')
#     expect(page).to have_content 'Welcome player!'
#   end
# end
```

Created a form in index.erb so that the player can enter their name. This demonstrates how the controller and view interact.
Controller.
```
get '/' do
  erb :index
end
```
View.
```
<h1>Register your name to start!</h1>
<form action="/name" method="post">
  <div>
    <label for="name">Player:<br></label>
    <input type="text" id="name" name="player_name">
  <input type="submit" value="Submit">
  </div>
</form>
```

Used sign_in_and_play and a web_helper_spec.rb to keep the code dry.
```
def sign_in_and_play
  visit ('/')
  fill_in 'player_name', with: 'Tan'
  click_button 'Submit'
end
```

Used a redirect after the player has entered their name from /names to /play route.


Regarding the /play page, there is a form for radio buttons so that the player can submit a weapon: rock, paper or scissors.
```
<form action="/result" method="get">
  <input type="radio" name="weapon" weapon="rock"> Rock<br>
  <input type="radio" name="weapon" weapon="paper"> Paper<br>
  <input type="radio" name="weapon" weapon="scissors"> Scissors<br>
  <br>
  <input type="submit" value="Submit">
</form>
```
