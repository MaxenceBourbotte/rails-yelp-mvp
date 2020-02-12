Rails.application.routes.draw do
  get    'restaurants',          to: 'restaurants#index', as: "restaurants"

  get    'restaurants/new',      to: 'restaurants#new', as: 'new_restaurant'
  post   'restaurants',          to: 'restaurants#create'

  get    'restaurant/:id',   to: 'restaurants#show', as: 'restaurant'

  get    'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  patch  'restaurants/:id',      to: 'restaurants#update'

  delete 'restaurants/:id',      to: 'restaurants#destroy'

  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: 'new_restaurant_review'

  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
end
