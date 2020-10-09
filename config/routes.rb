Rails.application.routes.draw do
  # resources :questions

  # resources :questions do
  #   resources :flashcard_sets
  # end

  resources :flashcard_sets do
    resources :topics
  end

  # resources :topics 
  resources :topics do
    resources :flashcard_sets
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
