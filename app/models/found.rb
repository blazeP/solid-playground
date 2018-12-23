# frozen_string_literal: true

class Found < ApplicationRecord
  belongs_to :user
  belongs_to :dwarf
end
