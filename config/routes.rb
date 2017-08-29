Rails.application.routes.draw do
  resources :apartments
  	root 'apartments#index' 
	get '/display', to: 'apartments#display'
end
