require 'rails_helper'

feature 'view list of questions', %q(
  As a user
  I want to view recently posted questions
  So that I can help others
  ) do
    # - I must see the title of each question
    # - I must see questions listed in order, most recently posted first
    scenario 'visitor sees list of questions' do
      question = FactoryGirl.create(:question)
      visit '/'

      expect(page).to have_content(question.title)
    end
  end
