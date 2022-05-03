Rails.application.routes.draw do
  authenticated :user do
    devise_scope :user do 
      root "devise/registrations#edit", as: :authenticated_root
    end
  end

  devise_scope :user do 
    root "devise/sessions#new"
  end
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
