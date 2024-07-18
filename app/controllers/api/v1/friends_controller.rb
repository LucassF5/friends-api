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
      render json: {status: "ERROR", message: "Friend could not be created", data: friend.errors}, status: :unprocessable_entity
    end
  end

  def show
    id = params[:id]
    friend = Friend.find(id)

    if friend
      render json: {status: "SUCCESS",  data: friend}, status: :ok
    else
      render json: {status: "ERROR", message: "Friend not found"}, status: :bad_request
    end
  end

  def update
    id = params[:id]
    friend = Friend.find(id)

    if friend.update(friend_params)
      render json: {status: "SUCCESS", message: "Friend updated successfully", data: friend}, status: :ok
    else
      render json: {status: "ERROR", message: "Friend could not be updated", data: friend.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    id = params[:id]
    friend = Friend.find(id)

    if friend.destroy
      render json: {status: "SUCCESS", message: "Friend deleted successfully", data: friend}, status: :ok
    else
      render json: {status: "ERROR", message: "Friend could not be deleted", data: friend.errors}, status: :bad_request
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:name, :phone, :location, :email)
  end

end
