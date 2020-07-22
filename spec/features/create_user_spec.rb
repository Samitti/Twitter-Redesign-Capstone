require 'rails_helper'

describe 'creating a new user' do
  it 'creates a user and signs in' do
    visit root_url
    click_link 'Sign Up'
    expect(current_path).to eq(new_user_path)
    fill_in 'Username', with: 'Sami'
    fill_in 'Full name', with: 'Samuel'
    click_button 'Sign up'
    expect(current_path).to eq(home_path)
    expect(page).to have_text('Samuel')
  end

  it 'does not sign in if username is balank/empty' do
    visit new_session_url
    click_button 'Sign In'
    expect(page).to have_text('Sign In')
  end
end
