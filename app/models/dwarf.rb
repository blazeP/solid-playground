# frozen_string_literal: true

class Dwarf < ApplicationRecord
  DISTRICTS = {
    stare_miasto: 0, nowy_dwor: 1, gaj: 2 # Its just an example; should be expanded
  }.freeze

  has_many :founds
  has_many :users, through: :founds

  enum district: DISTRICTS
end
