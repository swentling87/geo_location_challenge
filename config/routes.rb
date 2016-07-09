Rails.application.routes.draw do

   root 'landing#welcome'
   get 'landing/about'

   resources :locations, only: [:index] do
     collection do
       post 'import'
     end
   end

end
