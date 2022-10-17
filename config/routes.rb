Rails.application.routes.draw do
  root "static_pages#home"

  scope "/:session_id" do 
    resources :users
    resources :groups, only: [:index, :new, :create, :destory]

    #Sessions
    get "/top", to: "sessions#top"
  end

end
