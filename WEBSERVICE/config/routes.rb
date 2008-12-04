ActionController::Routing::Routes.draw do |map|
  map.resources :mets
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
