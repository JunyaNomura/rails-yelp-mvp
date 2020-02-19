# Rails.application.routes.draw do
#   get 'reviews/new'
#    # => 'reviews#new'
#   get 'reviews/create'
#   # 　=> 'reviews#create'
#   get 'restaurants/index'
#   # 　=> 'restaurants#index'
#   get 'restaurants/show'
#   # 　=> 'restaurants#show'
#   get 'restaurants/new'
#   # 　=> 'restaurants#new'
#   get 'restaurants/edit'
#   # 　=> 'restaurants#edit'
#   get 'restaurants/create'
#   # 　=> 'restaurants#create'
#   get 'restaurants/update'
#   # 　=> 'restaurants#update'
#   get 'restaurants/destroy'
#   # 　=> 'restaurants#destroy'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    collection do
      get 'top', to: 'restaurants#top', as: :top
    end
  end
end
