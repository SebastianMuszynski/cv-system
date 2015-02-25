Rails.application.routes.draw do
  
  root to: 'pages#main'
  
  devise_for :users
  devise_for :staff_members

  namespace :admin do
    authenticate :staff_member do
      resources :cvs
      resources :jobs
      root 'jobs#index', as: :authenticated_admin_root
    end
  end
  
  authenticate :user do
    resources :jobs
    resources :cvs do
      get 'feedback_preview', to: :feedback_preview, on: :collection
    end
    root 'cvs#index', as: :authenticated_user_root
  end

  get '*path', to: redirect('/')
  # Do not add any routes below as they will be overwritten by the '*path' route.
end
