Rails.application.routes.draw do
  root 'shortened_urls#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shortened_urls, path: 's'
  get "/*path",    to: 'stub_handler#show'
end
