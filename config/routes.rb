ElectNext::Application.routes.draw do

  root :to => "legislators#index"
  resources :legislators
  resources :contributions
  
  match 'legislator_object'  => "legislators#return_legislators"

end
