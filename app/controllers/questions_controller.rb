class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:question]
    @answer = coach_answer(@query) if @query
  end

  def coach_answer(message)
    if message.downcase == "i am going to work right now!"
      "Great! Have a nice day"
    elsif message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
