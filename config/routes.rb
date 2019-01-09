# frozen_string_literal: true

Rails.application.routes.draw do
  root "founds#new"
  devise_for :users, controllers: { registrations: "registrations" }

  resources :dwarves, only: %i(index show)
  resources :founds, only: %i(index show new)
end
