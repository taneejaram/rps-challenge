require 'spec_helper.rb'

def sign_in_and_play
  visit ('/')
  fill_in 'player_name', with: 'Tan'
  click_button 'Submit'
end
