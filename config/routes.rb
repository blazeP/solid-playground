# frozen_string_literal: true

Rails.application.routes.draw do
  root "dwarf#index"
  devise_for :users, controllers: { registrations: "registrations" }
end

