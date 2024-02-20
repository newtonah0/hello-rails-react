class Api::GreetingsController < ApplicationController
  def random
    greeting = Message.order('RANDOM()').first
    if greeting
      render json: { greeting: greeting.content }
    else
      render json: { error: 'No messages found' }, status: :not_found
    end
  end
end
