Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  controller :index do
    get '/', action: :index
  end

  controller :posts do
    get 'posts', action: :index
  end
end
