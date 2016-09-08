class SessionsController < ApplicationController
  def new
  end
  def create

    user=User.find_by(email:params[:session][:email].downcase)
    if user&&user.authenticate(params[:session][:password])

    else
        render 'new'
        flash.now[:danger]="もう一度だ！カカロット！！"
    end
  end

  def destroy

  end
end
