Hospitalin::Application.routes.draw do

  root 'hospitalin#main'


  get 'public_page',   to: 'public_page#index', as: :public_page
  get 'patient_login', to: 'patient#login', as: :patient_login
  get 'patient', to: 'patient#profile', as: :patient_profile
  get 'timeline', to: 'patient#timeline', as: :patient_timeline

  get 'login', to: 'otdelenie#login', as: :otdelenie_login
  get 'sister', to: 'otdelenie#sister_dashboard', as: :sister_dashboard
  get 'doctor', to: 'otdelenie#doctor_dashboard', as: :doctor_dashboard


  namespace :admin do
    root 'health#dashboard'
  end


end

