require 'spec_helper'

feature 'view links' do
  scenario 'view existing links on homepage' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit '/'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Makers Academy')
    end
  end
end
