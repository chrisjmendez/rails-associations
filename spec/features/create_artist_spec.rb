require 'rails_helper'

feature 'create new artist' do  
  scenario 'with valid data' do
    @artist = Faker::Superhero.name
    visit('/')
    click_on("New Artist")
    fill_in("Name", with: @artist)
    click_on("Create Artist")
    expect(page).to have_content("Artist has been created")
    expect(Artist.last.name).to eq(@artist)
  end
end