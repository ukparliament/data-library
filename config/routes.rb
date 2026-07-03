Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"
  # Named "home" route so the shared breadcrumb partial's `home_url` resolves.
  get "/" => "home#index", as: :home
  get "search", to: "home#search"
  get "data-services", to: "home#data_services", as: :data_services
  get "data-catalogue", to: "home#data_catalogue", as: :data_catalogue
  get "members-and-elections", to: "home#members_and_elections", as: :members_and_elections
  get "parliamentary-business", to: "home#parliamentary_business", as: :parliamentary_business
  get "committees", to: "home#committees", as: :committees
  get "papers-and-procedure", to: "home#papers_and_procedure", as: :papers_and_procedure
  get "legislation", to: "home#legislation", as: :legislation
  get "vocabulary", to: "home#vocabulary", as: :vocabulary
  get "apps", to: "home#apps"

  # About-this-website pages, grouped under /meta.
  get "meta" => "meta#index", as: :meta_list
  get "meta/about" => "meta#about", as: :meta_about
  get "meta/cookies" => "meta#cookies", as: :meta_cookies

  # Preserve the old top-level URL for the About page, now under /meta.
  get "about", to: redirect("/meta/about")
end
