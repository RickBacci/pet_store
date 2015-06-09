class Pet < ActiveRecord::Base
  belongs_to :store
  validates :name, :breed, :gender, presence: true
end
