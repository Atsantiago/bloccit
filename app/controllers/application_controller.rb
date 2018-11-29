class ApplicationController < ActionController::Base
  config.autoload_paths << FIle.join(config.root, "lib")
end
