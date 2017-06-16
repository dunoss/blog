Rails.application.routes.draw do
  resources :flogs
  root "flogs#index"
end
