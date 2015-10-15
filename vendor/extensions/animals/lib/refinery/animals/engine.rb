module Refinery
  module Animals
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Animals

      engine_name :refinery_animals

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "animals"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.animals_admin_animals_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Animals)
      end
    end
  end
end
