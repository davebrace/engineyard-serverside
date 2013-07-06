require 'engineyard-serverside/dependency_manager/base'

module EY
  module Serverside
    class DependencyManager
      class Npm < Base
        def detected?
          paths.package_json.exist?
        end

        def install
          shell.status "Installing npm packages (package.json detected)"
          run "cd #{paths.active_release} && npm install"
        end
      end
    end
  end
end
