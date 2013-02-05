class StatesController < ApplicationController

  def show
    @states = State.all
  end
end
