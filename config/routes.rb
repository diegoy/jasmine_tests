TestingCoffeescript::Application.routes.draw do
  controller :states do
    get "/states", action: :show
  end
end
