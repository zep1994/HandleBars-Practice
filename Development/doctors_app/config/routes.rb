Rails.application.routes.draw do
 resources :doctors do 
 resources :appointments
 end


 resources :patients do 
	 resources :appointments
end

 root 'doctors#index'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
