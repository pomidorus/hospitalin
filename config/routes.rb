Hospitalin::Application.routes.draw do

  devise_for :users
  root 'hospitalin#main'
  get 'public/:token', to: 'hospitalin#public_profile', as: :public_profile

  namespace :patient do
    root 'main#dashboard'
    get 'public', to: 'main#public', as: :public
  end


end

