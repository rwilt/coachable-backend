class QuestionsController < ApplicationController
    
 
    def create
        question = Question.create(question_params)
        render json: question
    end
    
    def update
    question = Question.find(params[:id])
    question.update(question_params)
    render json: question
    end
    
    def show
    @question = Question.find(params[:id])
    render json: @question
    end
    
    def destroy
    question = Question.find(params[:id])
    question.destroy 
    render json: question
    end

    private
    def question_params
        params.permit(:content, :industry)
    end

end
