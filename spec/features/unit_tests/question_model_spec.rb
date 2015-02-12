require_relative '../../spec_helper'
require "faker"

describe "Question model" do
  it "model permits creation" do
    expect {Question.create()}.to change{Question.count}
  end

  it "Questions can make Options." do
    test = Question.create()
    expect{test.options.create()}.to change{Option.count}
  end

end
