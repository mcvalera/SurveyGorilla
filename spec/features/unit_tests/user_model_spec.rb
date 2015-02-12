require_relative '../../spec_helper'
require "faker"

describe "User model" do
  it "model permits creation" do
    expect {User.create()}.to change{User.count}
  end
end
