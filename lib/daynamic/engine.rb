module Daynamic
  class Engine < ::Rails::Engine
    isolate_namespace Daynamic

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
