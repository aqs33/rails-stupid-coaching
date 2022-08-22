QUESTION_OK = "I am going to work"
ANSWER_OK = "Great!"
ANSWER_REP = "Silly question, get dressed and go to work!"
ANSWER_NEG = "I don't care, get dressed and go to work!"

class QuestionsController < ApplicationController
    def ask
    end

    def answer
        @question = params[:question]
        @answer = stupid_coach(@question)
    end

    private

    def stupid_coach(str)
        is_question?(str) ? ANSWER_REP : ((str == QUESTION_OK) ? ANSWER_OK : ANSWER_NEG)
    end

    def is_question?(str)
        (str === nil) ? false : str.end_with?("?")
    end
end
