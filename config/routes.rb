Rails.application.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :roles
  end
end
