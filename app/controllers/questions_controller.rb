class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @question.gsub(/(%20|\+)/, ' ')
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif !/.*\?$/.match(@question).nil?
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
