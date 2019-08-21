require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should belong_to(:place) }
  it { should validate_presence_of :user_name }
  it { should validate_presence_of :headline }
  it { should validate_presence_of :body }
  it { should validate_presence_of :rating }
  it { should validate_inclusion_of(:rating).in_range(1..5) }
end
