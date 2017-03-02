class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def destroy
    @user = current_user
    @user.update_attribute :role, "standard"
    @user.save!

    @wikis = Wiki.where(user_id: @user.id)
    @wikis.update_all( private: false )

    redirect_to welcome_index_path
    flash[:alert] = "Premium membership deleted!"
  end

end
