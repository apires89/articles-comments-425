Rails.application.routes.draw do
  resources :articles do
   resources :comments, only: [:new,:create]
   collection do
     get :top
   end
    member do
      get :author
    end

  end
  resources :comments, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


# everytime i create a comment i need an associated article!
# everytime i create a review i need an associated restaurant!
