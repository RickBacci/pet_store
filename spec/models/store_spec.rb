require 'rails_helper'

RSpec.describe Store, type: :model do

  let(:store) { Store.create(name: 'petsmart') }

  it 'is valid' do
    expect(store).to be_valid
  end

  it 'is not valid without a name' do
    store.name = nil
    expect(store).to_not be_valid
  end

  it 'should respond to pet' do
    expect(store).to respond_to(:pets)
  end

  it 'should have no pets' do
    expect(store.pets).to eq([])
  end
end
