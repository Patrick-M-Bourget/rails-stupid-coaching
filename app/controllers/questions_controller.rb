class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question != "I am going to work" && @question.exclude?("?")
      return @answer = "I don't care, get dressed and go to work!"
    elsif @question.include? ("?")
      return @answer = "Silly question, get dressed and go to work!"
    else
      return @answer = "Great"
    end
  end
end
