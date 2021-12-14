Rails.application.routes.draw do
 
  
  resources 'users',only:[:show], :path => "my-profile"
  resources 'projects', only:[:index,:new,:create,:show,:edit,:destroy,:update ], :path => "dashboard"
  
  scope 'admin', module: 'admin', as: 'admin' do
    resource 'pannel'
  end

  resources :projects do 
  resources :housings 
  end 

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end

  devise_for :users
  root to: "statics#home"
end
