class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end


  private

  def coach_answer(question)
    question.downcase!
     if question == "i am going to work"
      "Great!"
    elsif question.include?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
