class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @email = user.email
    @birthday = user.birthday
    @cloths = user.cloths
  end
 end 