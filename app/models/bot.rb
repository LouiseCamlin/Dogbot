class Bot < ApplicationRecord


  def self.new_dog

    Dog.order_by_rand.first

  end

  def tweet

    dog = Bot.new_dog
    status = dog.breed + " " + dog.fact
    CLIENT.update_with_media(status, File.new("./app/assets/images/" + dog.breed + "jpg"))

  end

end

bot = Bot.new
bot.tweet
