Rails.application.routes.draw do
  resources :movies do
    collection do
      get 'search', to: 'movies#search', as: 'search_movies'
    end
  end

  root 'movies#index'
end