require 'rails_helper'

RSpec.describe Pet, type: :model do
  let(:pet) { Pet.new(name: 'marvin', breed: 'cat', gender: 'male') }
 
  it 'to be valid' do
    expect(pet).to be_valid
  end 

  it 'to be invalid without a name' do
    pet.name = nil 
    expect(pet).to_not be_valid
  end

  it 'to be invalid without a breed' do
    pet.breed = nil
    expect(pet).to_not be_valid 
  end

  it 'to be invalid without a gender' do
    pet.gender = nil
    expect(pet).to_not be_valid 
  end

  it 'to respond to store' do
    expect(pet).to respond_to(:store)
  end

  it 'should have a store name' do
    store = Store.create(name: 'test')
    store.pets.create(name: 'blah', breed: 'dog', gender: 'female')
    test_pet = Pet.all.last

    expect(test_pet.store.name).to eq('test')
  end
end
