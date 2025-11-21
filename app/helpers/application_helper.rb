module ApplicationHelper
  def breadcrumbs
    crumbs = []
    crumbs << link_to("Home", root_path, class: "text-orange-500 hover:text-orange-400")
    
    if controller_name == "menus"
      if action_name == "index"
        crumbs << content_tag(:span, "Menu", class: "text-gray-400")
      elsif action_name == "show" && @menu
        crumbs << link_to("Menu", menus_path, class: "text-orange-500 hover:text-orange-400")
        crumbs << content_tag(:span, @menu.food, class: "text-gray-400")
      end
    end
    
    content_tag(:nav, class: "flex gap-2 text-sm mb-6") do
      safe_join(crumbs, content_tag(:span, " / ", class: "text-gray-400"))
    end
  end
end
