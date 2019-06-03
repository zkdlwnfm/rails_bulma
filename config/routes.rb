Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  controller :index do
    get '/', action: :index
  end

  controller :posts do
    get 'posts', action: :index
    post 'posts', action: :create
    get 'new', action: :new
    get 'create', action: :create
  end

  controller :categories do
    get 'categories', action: :index
  end

  controller :users do
    get 'signup', action: :signup
  end
end
