Rails.application.routes.draw do
  get '/contact' , to:"statics#contact"
  resources :housings
  resource 'users',only:[:show,:edit], :path => "my-profile"
  resources 'projects', only:[:index], :path => "dashboard"
  resource 'projects', only:[:show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
