Rails.application.routes.draw do
  resources :cau do
    collection do
      get 'autocomplete'
      get 'find'
    end
  end

  resources :restaurants do
    resources :comments
  end

  resources :pubs do
    resources :comments
  end

  root 'cau#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
