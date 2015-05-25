require 'rails_helper'

describe User do 

  include TestFactories

  describe "#favorited(post)" do

    before do
      @post = associated_post
      @user = authenticated_user
    end

    it "returns 'nil' if the user had not favorited the post" do
      expect(@user.favorited(@post)).to eq(nil)
    end

    it "returns the appropiate favorite if it exists" do 
      @favorite = @user.favorites.create(post: @post)
      expect(@user.favorited(@post)).to eq(@favorite)
    end
  end
end

