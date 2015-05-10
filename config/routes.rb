Rails.application.routes.draw do

  devise_for :users
  devise_for :staff_members

  unauthenticated do
    root to: 'pages#main'
  end

  namespace :admin do
    authenticate :staff_member do
      resources :cvs do
        resources :feedbacks
      end
      resources :feedbacks
      resources :jobs
      get '/stats', to: 'pages#stats'
      root 'jobs#index', as: :authenticated_admin_root
    end
  end

  authenticate :user do
    resources :jobs, only: [:index, :show] do
      resources :cvs
    end
    resources :cvs do
      resources :feedbacks, only: [:show] do
        post :accept, :reject
      end
    end
    get '/contact', to: 'pages#contact'
    root 'jobs#index', as: :authenticated_user_root
  end

  get '*path', to: redirect('/')
  # Do not add any routes below as they will be overwritten by the '*path' route.
end
