module EngineManager
  class Engine < ::Rails::Engine
    isolate_namespace EngineManager
    config.to_prepare do
      ApplicationController.helper ::ApplicationHelper

      Dir.glob(Rails.root + "app/decorators/engine_manager/**/*_decorator.rb").each do |c|
        require_dependency(c)
      end
    end
  end
end
