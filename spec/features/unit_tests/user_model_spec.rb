require_relative '../../spec_helper'
require "faker"

describe "User model" do
  it "model permits creation" do
    expect {User.create()}.to change{User.count}
  end

  it "users can make Surveys." do
    test = User.create()
    expect{test.surveys.create()}.to change{Survey.count}
  end
end
