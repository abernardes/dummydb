require 'rails_helper'

RSpec.describe User, type: :model do
  it "validates the uniqueness of username" do
    User.create!(username: 'foo')

    user = User.new(username: 'foo')

    user.valid?

    expect(user.errors[:username]).to include 'has already been taken'
  end
end
