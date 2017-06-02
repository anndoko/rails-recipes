Rails.application.routes.draw do

  # FAQ
  get "/faq" => "pages#faq"

  devise_for :users

  resources :events

  namespace :admin do
    root "events#index"
    resources :events
  end

  root "events#index"

end
