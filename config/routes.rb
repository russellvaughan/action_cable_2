Rails.application.routes.draw do
  devise_for :users
  resources  :chat_rooms
	root :to => 'chat_rooms#index'
	mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
