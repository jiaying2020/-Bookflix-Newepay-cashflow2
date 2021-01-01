Rails.application.routes.draw do
  resources :products do
  end

  resource :cart, only:[:show, :destroy] do
    collection do
      post :add, path:'add/:id'
      get :mpg, path: 'checkout'
    end
  end

  resources :pledges, only: [:show, :create] do
  end

  resources :payments do
    collection do
      get :mpg
      get :canceled
      post :notify
      post :paid
      post :not_paid_yet
    end
  end



end
