class StatesController < ApplicationController
  respond_to :json

  def show
    @states = State.all
    respond_with @states, root: false
  end
end
