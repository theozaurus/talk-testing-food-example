ActionController::Routing::Routes.draw do |map|
  Clearance::Routes.draw(map)
  
  map.resources :foods, :only => [:new, :create]
  
  map.root :controller => 'home'
end
