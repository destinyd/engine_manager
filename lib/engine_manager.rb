module EngineManager
  class << self
    def engine_manager_config
      self.instance_variable_get(:@engine_manager_config) || {}
    end

    def set_mount_prefix(mount_prefix)
      config = EngineManager.engine_manager_config
      config[:mount_prefix] = mount_prefix
      EngineManager.instance_variable_set(:@engine_manager_config, config)
    end

    def get_mount_prefix
      engine_manager_config[:mount_prefix]
    end
  end
end

# 引用 rails engine
require 'engine_manager/engine'
require 'engine_manager/rails_routes'
