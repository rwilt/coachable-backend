class KeyPhrasesController < ApplicationController

    def index
    @key_phrase = KeyPhrase.all
    render json: @key_phrase  
    end

    def show
        @key_phrase= KeyPhrase.find(params[:id])
        render json: @key_phrase
    end

    def create
        key_phrase = KeyPhrase.create(key_params)
        render json: key_phrase
    end

    def update
        key_phrase= KeyPhrase.find(params[:id])
        key_phrase.update(key_params)
        render json: key_phrase
    end

    def destroy
        key_phrase = KeyPhrase.find(params[:id])
        key_phrase.destroy
        render json: key_phrase
    end
    #may not need destroy and update on frontend? 

    private
    def key_params
        params.permit(:phrases, :industry, :game_id)
    end

end
