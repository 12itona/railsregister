Rails.application.routes.draw do
  get 'returun/return'
  get 'top/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get'main/index'
    post'main/create'
    get'top/top'
    post'main/list'
end
