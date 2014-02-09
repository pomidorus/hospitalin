Hospitalin::Application.routes.draw do

  get "main/dashboard"
  devise_for :users
  root 'hospitalin#main'
  get  'public/:token', to: 'hospitalin#public_profile', as: :public_profile

  namespace :patient do
    root 'main#dashboard'
    get  'public', to: 'main#public', as: :public
  end

  namespace :doctor do
    root 'main#dashboard'
    get  'documentation', to: 'main#documentation', as: :documentation
  end

  namespace :nurse do
    root 'main#dashboard'
    get  'documentation', to: 'main#documentation', as: :documentation
  end


end

