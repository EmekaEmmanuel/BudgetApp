Rails.application.routes.draw do

  # Commented to prevent defaulting to sign in view to check if signed in or not
  devise_scope :user do
    root 'devise/sessions#new'
    # root "users#index"
  end

  devise_for :users
  resources :transactions
  resources :categories
  resources :users
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # namespace :api, defaults: { format: :json } do
  #   namespace :v1 do
  #     resources :recipes
    
  #     resources :recipe_foods
  
  #     resources :public_recipes
  
  #     resources :foods, except: [:update]
  
  #     resources :recipes, only: [:index, :show, :new, :create, :destroy] do
  #       resources :recipe_foods, only: [:new, :create, :destroy, :update, :edit]
  #     end
  
  #     resources :users, only: [:index, :show]

  #     get '/shopping_list', to: 'shopping_list#index', as: 'shopping_list'
  #   end
  # end

end
