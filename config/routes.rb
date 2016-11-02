Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "pub/musicas#index"

  namespace :pub do

    resources :musicas, only:[:index, :create] do 
    end

    resources :sets, only:[:index, :show] do
    end

  end


end
