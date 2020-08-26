class Order
  include ActiveModel::Model
  attr_accessor :postal_number, :birthplace_id, :municipality, :house_number, :building_name, :phone_number, :item_id, :user_id, :token

  def save
    @order = ItemPurchase.create(user_id: user_id, item_id: item_id)
    @address = Adress.create(postal_number: postal_number, birthplace_id: birthplace_id, municipality: municipality, house_number: house_number, building_name: building_name, phone_number: phone_number, item_id: item_id)

    #   TweetTagRelation.create(tweet_id: tweet.id, tag_id: tag.id)
  end
end
