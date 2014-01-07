require 'spec_helper'

feature 'Search twitter for a term' do 
  scenario 'searching by a hashtag' do
  	search_for 'Rails'

  	expect(page).to have_css 'li.tweet', count: 15
    all('li.tweet').each do |tweet|
      expect(tweet.text).to match /#rails/i # the "i" denotes case-insensitve searched tweets term 
    end
  end

  scenario 'searching with known results' do
    Searcher.searcher = FakeTwitter
    FakeTwitter['#Rails'] = 3.times.map {{text: 'Testing is awesome'}}
    
    search_for 'Rails'
    expect(page).to have_css 'li.tweet', count: 3, text: 'Testing is awesome'

    #all('li.tweet').each do |tweet|
    #  expect(tweet.text).to match /Testing is awesome/
    #end
  end	

  def search_for(term)
    visit root_path
    fill_in 'Search', with: term
    click_button 'Search'
  end
end