class QuestionController < ApplicationController

  def ask
  end

  def answer
    question = params[:question].downcase
    if question.include?("going to work") && question.exclude?("not")
      @answer = "Great!"
    elsif question[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
