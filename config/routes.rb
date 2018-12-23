# frozen_string_literal: true

Rails.application.routes.draw do
  root "founds#new"
  devise_for :users, controllers: { registrations: "registrations" }

  resources :dwarves, only: %i(index show)
end
