Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end

  resources :tickets do
    resources :comments, only: [:new, :create]
  end
  
  resources :posts
end
