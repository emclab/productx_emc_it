module ProductxEmcIt
  class Engine < ::Rails::Engine
    isolate_namespace ProductxEmcIt
    config.generators.each do |g|
      g.template_engine :erb
      g.integration_tool :rspec
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => "spec/factories" 
    end
  end
end
