Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #一見、todolistsが重複しているように見えるが注視すると、HTTPメソッドとURLが完全に一致しているものは一つもない
  get 'todolists/new'=> 'todolists#new'
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  delete 'todolist/:id' => 'todolists#destroy', as: 'destroy_todolist'

end
