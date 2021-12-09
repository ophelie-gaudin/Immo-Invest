Rails.application.routes.draw do
 
  
  resource 'user',only:[:show], :path => "my-profile"
  resources 'projects', only:[:index], :path => "dashboard"
  resource 'projects', only:[:show]
  
  scope 'admin', module: 'admin', as: 'admin' do
    resource 'pannel'

  end

  resources 'projects', only:[:index,:new,:create,:show], :path => "dashboard"
  # resources :projects
  resources :projects do 
  resources :housings 
  end 
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "statics#home"
end
