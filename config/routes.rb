Rails.application.routes.draw do
  post '/signin' => 'users#signin'
  post '/signup' => 'users#signup'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
