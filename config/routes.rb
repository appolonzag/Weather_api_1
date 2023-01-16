Rails.application.routes.draw do
  mount CastApi::Temperature => '/'

  resources :forecasts
end
