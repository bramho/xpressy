class UsersController < ApplicationController
   # before_filter :authorize_admin, only: :create
   before_action :authorize_admin
   before_action :get_companies

   def add_new_user
      render 'new'
   end

   def get_companies
      @companies = Company.all
   end

   def create
      @user = User.new(user_params)
      @user.save
      redirect_to root_path, alert: 'New user has been created.'
   end

   private
      def authorize_admin
         if(current_user)
            if (current_user.admin?)
               return
            else
               redirect_to root_path, alert: 'You do not have the rights to view this page.'
            end
         elsif (User.count == 0)
            return
         else
            redirect_to root_path, alert: 'You do not have the rights to view this page.'
         end
      end

      def user_params
         params.require(:user).permit(:email, :first_name, :last_name, :admin, :password, :password_confirmation)
      end
end
