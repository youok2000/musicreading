Rails.application.routes.draw do
  get '/' => 'home#top'

  get 'information'=> 'song#information'
  get 'seem' => 'song#seem'
  get 'target' => 'song#target'
  get 'plan' => 'song#plan'
  get 'list' => 'song#list'
  get 'show/:id' => 'song#show'

  post 'song/plans' => 'song#plans'
  post 'song/:id/destroy' => 'song#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
