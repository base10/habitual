class AccountsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(permitted_params)

    respond_to do |format|
      if @user.save
        format.html {
          qrender :new,
          notice: "Account created.",
          status: :created
        }
      else
        format.html {
          render :new,
          alert: @user.errors.first.message,
          status: :unprocessable_entity
        }
      end
    end
  end

  private

  def permitted_params
    params.require(
      :user
    ).permit(
      :email,
      :name,
      :password,
      :password_confirmation
    ).with_defaults(password_challenge: '')
  end
end
