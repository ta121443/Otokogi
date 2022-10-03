Rails.application.routes.draw do
  root "static_pages#home"

  scope "/:session_id" do 
    resources :users
    resources :sessions
    resources :groups
  end


end
