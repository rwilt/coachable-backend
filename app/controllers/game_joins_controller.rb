class GameJoinsController < ApplicationController


    def index
        @game_join = GameJoin.all
        render json: @game_join
      
    end

    def create
        gameJoin = GameJoin.create(gameJoin_params)
        render json: gameJoin
    end

    def destroy
        gameJoin = GameJoin.find(params[:id])
        gameJoin.destroy
        render json: gameJoin
    end

    private

    def gameJoin_params
        params.permit(:game_id, :question_id, :answer, :score, :result_summary)
    end

end
