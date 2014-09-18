RailsAdmin.config do |config|
  config.main_app_name = ["showcase",]

  config.attr_accessible_role { _current_user.role.to_sym }

  config.label_methods << :description # Default is [:name, :title]
end