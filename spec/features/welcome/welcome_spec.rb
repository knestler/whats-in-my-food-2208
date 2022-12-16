require 'rails_helper'

RSpec.describe 'welcome page' do 
  it "can search for sweet potatoes and reroute to '/foods' page" do 
    visit '/'
    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'
    expect(current_path).to be('/foods')
  end

  it 'has search results' do 
    visit '/foods'

    expect(page).to have_content('')

#     total of the number of items returned by the search
# list of TEN foods with 
# .each
# gtinUpc:
# :description
# brandOwner:
# ingredients:

# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
  end
end

# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients