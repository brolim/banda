Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "posts#index"

  # namespace :pub do

  #   resources :musicas, only:[:index, :create] do 
  #   end

  #   resources :sets, only:[:index, :show] do
  #   end

  # end


  # get "/posts" => "posts#index"
  resources :posts, :only=>[:index, :new, :create, :destroy, :show, :edit, :update]


end
