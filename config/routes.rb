Rails.application.routes.draw do
 
  
  resources 'users',only:[:show], :path => "my-profile"
  resources 'projects', only:[:index,:new,:create,:show,:update], :path => "dashboard"
  
  scope 'admin', module: 'admin', as: 'admin' do
    resource 'pannel'
  end

  resources :projects do 
  resources :housings 
  end 

  devise_for :users
  root to: "statics#home"
end
