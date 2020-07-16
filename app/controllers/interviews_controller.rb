class InterviewsController < ApplicationController

    def show
        @interview = Interview.find(params[:id])
        render json: @interview
    end

    def create
        interview = Interview.create(interview_params)
        render json: interview
    end

    def update
        interview = Interview.find(params[:id])
        interview.update(interview_params)
        render json: interview
    end

    def destroy
        interview = Interview.find(params[:id])
        interview.destroy
        render json: interview
    end


    private
    def interview_params
        params.permit(:title, :date, :interviewer, :note, :user_id, :company, :industry, :result)
    end

end
