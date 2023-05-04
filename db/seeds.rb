User.delete_all
Card.delete_all
Deck.delete_all

users = FactoryBot.create_list(:user, 10)
deck  = FactoryBot.create(:deck)
cards = FactoryBot.create_list(:card, 50)

cards[0..].each do |card|
  deck.cards << card
end
