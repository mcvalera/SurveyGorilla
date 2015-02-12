require_relative '../../spec_helper'
require "faker"

describe "option model" do
  it "model permits creation" do
    expect {Option.create()}.to change{Option.count}
  end
end
