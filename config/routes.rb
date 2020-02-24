Rails.application.routes.draw do

  get("/photos", {:controller => "photos", :action => "index"})
  get("/users", {:controller => "users", :action => "all_users"})
  get("/", {:controller => "users", :action => "all_users"})
  get("", {:controller => "users", :action => "all_users"})
  get("/user_sign_up", {:controller => "users", :action => "sign_up"})
  get("/user_sign_in", {:controller => "users", :action => "sign_in"})
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
