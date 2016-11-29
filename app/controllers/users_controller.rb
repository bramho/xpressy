class UsersController < ApplicationController
   before_filter :authorize_admin, only: :create

   def add_new_user
      render 'new'
   end

   def create
      @user = User.new(user_params)
      @user.save
      redirect_to root_path
   end

   private
      def authorize_admin
         if (current_user)
            return unless !current_user.admin?
            redirect_to root_path, alert: 'This page can only be viewed by Admins.'
         elsif (User.count == 0)
            return
         else
            redirect_to root_path, alert: 'This page can only be viewed by Admins.'
         end
      end

      def user_params
         params.require(:user).permit(:email, :admin, :password, :password_confirmation)
      end
end
