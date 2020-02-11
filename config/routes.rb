Rails.application.routes.draw do
  get 'nigerian_name/get'
  get 'randomquotes/get'
  get 'randomquotes/post'
  get 'randomquotes/show'
  root 'static_pages#home'

  get 'stack_overflow/index'
  get 'stack_overflow/new'
  get 'stack_overflow/create'
  get 'stack_overflow/edit'
  get 'stack_overflow/show'
  get 'stack_overflow/delete'

  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'

  get 'searchescontroller/homeaway_search'
  get 'searchescontroller/homeaway_connect'
  get 'searchescontroller/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
