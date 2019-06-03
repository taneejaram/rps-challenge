feature 'Enter player names' do

  scenario 'Players can submit their names using a form' do
    sign_in_and_play
    expect(page).to have_content("Welcome to your Game of Rock, Paper, Scissors Tan")
  end

end


feature 'Playing the game' do


  scenario 'Player is able to see the option to select rock' do
    sign_in_and_play
    expect(page).to have_button('Rock')
  end

  # scenario 'When selecting rock, player can see if they have won' do
  #   sign_in_and_play
  #   select('rock', from: 'weapon')
  #   expect(page).to have_content('Tan' chose rock!)
  # end

end
