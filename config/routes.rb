Rails.application.routes.draw do
 
  resources :housings
  resource 'user',only:[:show], :path => "my-profile"
  resources 'projects', only:[:index], :path => "dashboard"
  resource 'projects', only:[:show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "statics#home"
end
