# frozen_string_literal: true

Rails.application.routes.draw do
  root "founds#new"
  devise_for :users, controllers: { registrations: "registrations" }

  resources :dwarves, only: %i(index show)
  resources :founds, only: %i(index show new)

  resources :dwarves, only: %i(index), module: "users", path: "user/dwarves", as: "user_dwarves"
  resources :founds, only: %i(edit), module: "users", path: "user/dwarves", as: "user_founds"
end