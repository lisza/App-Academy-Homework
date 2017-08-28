require 'rails_helper'

describe User do
  subject(:user) { User.new(email: "lisza@gmail.com", password: "good_password") }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  describe "#is_password?" do
    it  "verifies the user entered the correct password" do
      expect(user.is_password?("good_password")).to be true
    end
  end

  describe "#reset_session_token!" do
    it "resets the user's session token" do
      user.valid? # same as save?
      old_session_token = user.session_token
      user.reset_session_token!

      expect(user.session_token).to_not eq(old_session_token)
    end

    it "returns the new session token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe "::find_by_credentials" do
    before { user.save! }

    it "returns a user if the credentials match one" do
      expect(User.find_by_credentials("lisza@gmail.com", "good_password")).to eq(user)
    end

    it "returns nil if no user with those credentials was found" do
      expect(User.find_by_credentials("lisza@gmail.com", "bad_password")).to eq(nil)
    end
  end

end
