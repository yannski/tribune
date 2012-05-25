Tribune::Application.routes.draw do

  match '/' => 'rooms#index', :via => :get
  match '/:room_name/messages' => 'messages#index', :via => :get
  match '/:room_name/messages' => 'messages#create', :via => :post
end
