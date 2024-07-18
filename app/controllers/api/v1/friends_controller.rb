class Api::V1::FriendsController < ApplicationController
  def index
    friends = Friend.all
    render json: {status: "SUCCESS", message: "Fetched all the friends successfully", data: friends}, status: :ok
  end

  def create
    friend = Friend.new(friend_params)

    if friend.save
      render json: {status: "SUCCESS", message: "Friend created successfully", data: friend}, status: :created
    else
      render json: friend.errors, status: :unprocessable_entity
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:name, :phone, :location, :email)
  end

end
