module Refinery
  module Staffs
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Staffs

      engine_name :refinery_staffs

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "staffs"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.staffs_admin_staffs_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Staffs)
      end
    end
  end
end
