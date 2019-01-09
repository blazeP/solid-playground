# frozen_string_literal: true

module Users
  class DwarvesController < BaseController
    def index
      @dwarves = current_user.dwarves
    end
  end
end
