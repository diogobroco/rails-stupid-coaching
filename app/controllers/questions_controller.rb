class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ["Great!", "Silly questions, get dresses and go to work!", "I don't care, get dressed and go to work!"]

    @question = params[:question]
    if params[:question] == "I am going to work"
      @answer = @answers[0]
    elsif params[:question][-1] == "?"
      @answer = @answers[1]
    else
      @answer = @answers[2]
    end
  end
end
