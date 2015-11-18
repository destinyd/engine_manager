module EngineManager
  class ApplicationController < ActionController::Base
    layout "engine_manager/application"

    if defined? PlayAuth
      helper PlayAuth::SessionsHelper
    end
  end
end