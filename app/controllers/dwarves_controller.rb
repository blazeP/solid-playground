# frozen_string_literal: true

class DwarvesController < ApplicationController
  def index
    @dwarves = Dwarf.all
  end

  def show
    @dwarf = Dwarf.find(params[:id])
  end
end
