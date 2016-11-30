class RegistrationsController < Devise::RegistrationsController
   before_action :check_if_admin?, only: [:new, :create]

   protected
      def check_if_admin?
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
end
