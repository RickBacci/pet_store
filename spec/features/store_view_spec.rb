require 'rails_helper'
 RSpec.describe Store, type: :feature do
   
  let(:store) { Store.create(name: 'ACME_test') }
  let(:store2) { Store.create(name: 'ACME2_test') }
  

    
  it 'can display company names' do
    visit stores_path
     expect(page).to have_content('ACME_test') 
  end


end
