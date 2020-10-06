Rails.application.routes.draw do
  resources :articles do
   collection do
     get :top
   end
    member do
      get :author
    end

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
