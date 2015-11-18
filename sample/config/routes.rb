Rails.application.routes.draw do
  EngineManager::Routing.mount '/manager', :as => 'engine_manager'
  mount PlayAuth::Engine => '/auth', :as => :auth
end
