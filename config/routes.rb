TestingCoffeescript::Application.routes.draw do
  root to: "states#index"

  controller :states do
    get "/states", action: :show
  end
end
