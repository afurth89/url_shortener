Rails.application.routes.draw do
  get 'stub_handler/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shortened_urls, path: 's'
  get "/*path",    to: 'stub_handler#show'
end
