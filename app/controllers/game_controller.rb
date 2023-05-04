class GameController < ApplicationController
  def show
    @deck = Deck.limit(1).first
    @card = @deck.cards.order("RANDOM()").first
  end

  def update
    if params[:answer] == Card.find(params[:card_id]).answer
      user = current_user
      user.update!(hi_score: user.hi_score + 1)
      flash[:success] = "Correct answer!"
    else
      flash[:error] = "Incorrect"
    end
    redirect_to game_path
  end
end
