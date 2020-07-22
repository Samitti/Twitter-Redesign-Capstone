require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'should validate presence of username and full-name' do
      user = User.new(username: 'Sami', full_name: 'Samuel')
      expect(user.valid?).to be true
    end

    it 'should validate absence of username' do
      user = User.new(username: '', full_name: 'Samuel')
      expect(user.valid?).to be false
    end

    it 'should validate absence of username' do
      user = User.new(username: 'Sami', full_name: '')
      expect(user.valid?).to be false
    end
  end

  describe 'associations' do
    # it { should have_many(:posts) }
    # it { should have_many(:passive_relationships) }
    # it { should have_many(:active_relationships) }
    # it { should have_many(:following).through(:active_relationships) }
    # it { should have_many(:followers).through(:passive_relationships) }
  end
end
