require 'spec_helper'

require 'generators/rails_acclog2db/install/install_generator'

describe RailsAcclog2db::Generators::InstallGenerator do
  destination File.expand_path("../../../../../tmp", __FILE__)

  before { prepare_destination }

  it "generates app/models/log.rb" do
    run_generator
    expect( file('app/models/log.rb') ).to exist
  end

  it "generates db/migrate//create_logs.rb" do
    run_generator
    expect( file('db/migrate//create_logs.rb') ).to be_a_migration
  end

end
