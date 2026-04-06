class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]
    @answer = if @question.downcase.include?("coach")
      "I am not a coach, I am a coach assistant. Ask me anything about coaching and I will try to help you."
    elsif @question.downcase.include?("coach assistant")
      "I am a coach assistant, not a coach. I can help you with coaching questions, but I cannot coach you."
    else
      "I don't understand your question. Please ask me about coaching or being a coach assistant."
    end
  end
end
