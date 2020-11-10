Rails.application.routes.draw do
  get "pets", to: "pets#index"
  post "pets", to: "pets#create"
  get "pets/new", to: "pets#new", as: :new_pet
  get "pets/:id", to: "pets#show", as: :pet
  patch "pets/:id", to: "pets#update"
  get "pets/:id/edit", to: "pets#edit", as: :edit_pet
  delete "pets/:id", to: "pets#destroy"
end
