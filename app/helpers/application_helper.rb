module ApplicationHelper
   def active_tab(link_path)
      current_page?(link_path) ? "tab-current" : ""
   end

   def controller?(*controller)
      controller.include?(params[:controller])
   end

   def action?(*action)
    action.include?(params[:action])
  end
end
