require 'rails_helper'

feature 'post creation' do
  before(:example) do
    FactoryBot.create(:user)
    visit 'sessions/new'
    fill_in 'username', with: 'Sami'
  end

  it 'creates a new post' do
    click_on 'Sign In'
    fill_in 'content', with: 'Samis post'
    click_button 'submit'
  end
end
