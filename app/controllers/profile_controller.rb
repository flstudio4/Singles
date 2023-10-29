class ProfileController < ApplicationController
  layout 'custom'
  def show
    render 'profile/show'
  end

  def index
    if current_user.gender == "male"
      @profiles = User.where(:gender => "female").paginate(page: params[:page], per_page: 10)
    else
      @profiles = User.where(:gender => "male").paginate(page: params[:page], per_page: 10)
    end
    render 'profile/index'
  end
end
