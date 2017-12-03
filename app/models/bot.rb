class Bot < ApplicationRecord

  def self.new_dog
    Dog.order_by_rand.first 
  end

  def self.tweet
    dog = Bot.new_dog
    status = dog.breed + dog.fact
    CLIENT.update(status)
  end


end
