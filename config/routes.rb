Rails.application.routes.draw do
  resources :housings
  resources :users,only:[:show], :path => "my-profile"
  resources :projects , only:[:index,:show,:new,:create], :path => "dashboard"
  scope 'admin', module: 'admin', as: 'admin' do
    resource 'pannel'
  end
  devise_for :users
  root to: "statics#home"
end
