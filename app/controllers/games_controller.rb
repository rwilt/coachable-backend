class GamesController < ApplicationController

    def index
        game = Game.all
        render json: game
    end
    
    def show
        @game = Game.find(params[:id])
        render json: @game

    end

    def create
        game = Game.create(game_params)
        byebug
        render json: game
    end

    def update
        game = Game.find(params[:id])
        game.update(game_params)
        render json: game
    end

    def destroy
        game = Game.find(params[:id])
        game.destroy
        render json: game
    end


    private
    def game_params
        params.require(:game).permit(:user_id)
    end
end
