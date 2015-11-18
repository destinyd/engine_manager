EngineManager::Engine.routes.draw do
  get '/dashboard_path' => 'page#dashboard', as: :dashboard
  get '/nav' => 'home#nav', as: :nav
  root 'home#index'
end
