module ApplicationHelper
   def active_tab(link_path)
      current_page?(link_path) ? "tab-current" : ""
   end
end
