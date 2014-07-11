require 'rubygems'
require 'spork'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'


  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
   require 'shoulda/matchers'
  require 'rspec/autorun'

  # Requires supporting ruby files with custom matchers and macros, etc,
  # in spec/support/ and its subdirectories.
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
  Dir[Rails.root.join("spec/features/steps/**/*.rb")].each {|f| require f}


  RSpec.configure do |config|


    # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
    config.fixture_path = "#{::Rails.root}/spec/fixtures"

    # If you're not using ActiveRecord, or you'd prefer not to run each of your
    # examples within a transaction, remove the following line or assign false
    # instead of true.
    # config.use_transactional_fixtures = false

    # If true, the base class of anonymous controllers will be inferred
    # automatically. This will be the default behavior in future versions of
    # rspec-rails.
    config.infer_base_class_for_anonymous_controllers = false

    # Run specs in random order to surface order dependencies. If you find an
    # order dependency and want to debug it, you can fix the order by providing
    # the seed, which is printed after each run.
    #     --seed 1234
    config.order = "random"


    config.include FactoryGirl::Syntax::Methods

    config.use_transactional_fixtures = true


    config.before(:all) do
      FactoryGirl.lint
      Rails.application.load_seed
    end


 end
 Capybara.default_host = 'http://example.org'


end

Spork.each_run do

end