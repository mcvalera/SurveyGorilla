require_relative '../../spec_helper'
require "faker"

describe "Question model" do
  it "model permits creation" do
    expect {Question.create()}.to change{Question.count}
  end
end
