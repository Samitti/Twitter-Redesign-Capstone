require 'rails_helper'

describe 'creating a new user' do
  it 'creates a user and signs in' do
    visit root_url
    click_link 'Sign Up'
    expect(current_path).to eq(new_user_path)
    fill_in 'username', with: 'Sami'
    fill_in 'full_name', with: 'Samuel'
    click_button 'submit'
    expect(current_path).to eq(home_path)

    expect(page).to have_text('Welcome Successfuly Signed In')
    expect(page).to have_text('Samuel')
  end

  it 'does not create user if it is balck/empty' do
    visit new_session_url
    click_button 'submit'
    expect(current_path).to eq(new_session_path)
  end
end
