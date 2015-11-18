module EngineManager
  class Routing
    # EngineManager::Routing.mount "/engine_manager", :as => 'engine_manager'
    def self.mount(prefix, options)
      EngineManager.set_mount_prefix prefix

      Rails.application.routes.draw do
        mount EngineManager::Engine => prefix, :as => options[:as]
      end
    end
  end
end
