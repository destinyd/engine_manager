EngineManager::Engine.routes.draw do
  get '/dashboard' => 'page#dashboard', as: :dashboard
  get '/nav' => 'home#nav', as: :nav
  root 'home#index'
end
