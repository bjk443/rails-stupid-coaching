class QuestionsController < ApplicationController
    def ask
    end

    def answer
      @question = params[:question]
      answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
      if @question == "I am going to work"
        return @answer = answers[0]
      elsif @question.include? "?"
        return @answer = answers[1]
      else
        return @answer = answers[2]
      end
    end
end