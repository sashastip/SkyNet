class UsersController < ApplicationController
  before_action :load_user, only: [:show, :edit]

  def index
    @users = User.all
  end
end
