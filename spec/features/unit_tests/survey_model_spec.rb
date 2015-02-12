require_relative '../../spec_helper'
require "faker"

describe "Survey model" do
  it "model permits creation" do
    expect {Survey.create()}.to change{Survey.count}
  end
end
