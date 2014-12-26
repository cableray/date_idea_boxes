require 'rails_helper'

RSpec.describe 'Info Page' do
  it "displays the company name" do
    $content = 'Wunderbär'
    visit '/'
    expect(page).to have_content 'Date Idea Boxes'
    expect(page).to have_content 'Wunderbär'
  end
end