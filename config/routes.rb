Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"
  get "about", to: "home#about"
  get "help", to: "home#help"
  get "search", to: "home#search"
  get "data-services", to: "home#data_services", as: :data_services
  get "thesaurus", to: "home#thesaurus"
  get "data-catalogue", to: "home#data_catalogue", as: :data_catalogue
  get "tools", to: "home#tools"
  get "roadmap", to: "home#roadmap"
end
