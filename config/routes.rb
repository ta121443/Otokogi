Rails.application.routes.draw do
  root "static_pages#home"

  scope "/:session_id" do 
    resources :users
    resources :groups

    #Sessions
    get "/top", to: "sessions#top"
  end


end
