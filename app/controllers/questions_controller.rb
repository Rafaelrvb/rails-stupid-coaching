class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params["question"]
    if /^.*\?/.match(@answer)
      @coach = "Silly question, get dressed and go to work!"
    elsif  @answer == "I am going to work"
      @coach = "Great!"
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end
end
