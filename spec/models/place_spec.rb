require 'rails_helper'

RSpec.describe Place, type: :model do
  it { should have_many (:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :city }
  it { should validate_presence_of :country }
end
