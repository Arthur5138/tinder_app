class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
  end
  
  def index
    @users = User.where.not(id: current_user.id) #where.notでcurrent_user以外のidを全て取得
  end
end
