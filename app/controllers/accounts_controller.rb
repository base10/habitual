class AccountsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(permitted_create_params)

    respond_to do |format|
      if @user.save
        flash[:notice] = "Welcome, #{@user.name}. Your account has been created."

        format.html {
          render :new,
          status: :created
        }
      else
        Rails.logger.debug { "<<< #{@user.errors.first} " }
        flash[:alert] = @user.errors.first.message

        format.html {
          render :new,
          status: :unprocessable_entity
        }
      end
    end
  end

  private

  def permitted_create_params
    params.require(
      :user
    ).permit(
      :email,
      :name,
      :password,
      :password_confirmation
    )
  end

  def permitted_update_params
    params.require(
      :user
    ).permit(
      :email,
      :password,
    ).with_defaults(password_challenge: '')
  end
end
