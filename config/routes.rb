Rails.application.routes.draw do
  
  resources :transactions
  resources :merchants

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      devise_for :users
      resources :transactions, only: [:index, :create]
      match '/authenticate' => 'authentication#authenticate', via: :post
    end
  end

  # namespace :api , defaults: { format: :json } do
  	# resources :parameters do
  		# match '/check_auth' => 'api#check_auth', via: :post
    # end
  # end
   # devise_for :users,
   #           path: '',
   #           path_names: {
   #             sign_in: 'login',
   #             sign_out: 'logout',
   #             registration: 'signup'
   #           },
   #           controllers: {
   #             sessions: 'sessions'
   #           }
  # post 'authenticate', to: 'authentication#authenticate'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


