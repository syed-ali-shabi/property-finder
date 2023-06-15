Rails.application.routes.draw do
  get  'dashboard', to: 'dashboard#index'
  get 'dashboard/properties'
  get 'dashboard/report'
  resources :properties
  devise_for :accounts 

  devise_scope :account do  
   get '/accounts/sign_out' => 'devise/sessions#destroy',  as: :destroy_account_sessio    
  
  end
  root 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


