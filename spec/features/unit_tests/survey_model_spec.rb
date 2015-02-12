require_relative '../../spec_helper'
require "faker"

describe "Survey model" do
  it "model permits creation" do
    expect {Survey.create()}.to change{Survey.count}
  end

  it "Surveys can make Questions." do
    test = Survey.create()
    expect{test.questions.create()}.to change{Question.count}
  end

end
