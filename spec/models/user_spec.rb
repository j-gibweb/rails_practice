require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.create(user_name: "James Gibson Weber", email: "j.gibweb@gmail.com")
    @invalid_user = User.create(user_name: "Frederick Scheetz", email: "toe*tall()dildo@altavista .com")
  end

  it "returns just the user's first name" do
    expect(@user.first_name).to eq("James")
  end

  it "returns just the user's last name" do
    expect(@user.last_name).to eq("Weber")
  end

  it "should not have a valid email" do
    expect(@invalid_user).to be_invalid
  end

end