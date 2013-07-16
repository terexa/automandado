json.array!(@admin_menus) do |admin_menu|
  json.extract! admin_menu, :name, :description, :price
  json.url admin_menu_url(admin_menu, format: :json)
end
