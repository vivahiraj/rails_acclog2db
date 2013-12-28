require 'rails/generators'

module RailsAcclog2db
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      include Rails::Generators::Migration

      desc <<DESC
Description:
    Copies log.rb to app/models/.
    Copies create_logs.rb to db/migrate

Examples:
  `rails generate rails_acclog2db:install`
DESC

      def self.source_root
        @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end

      def create_model_file
        template "log.rb", "app/models/log.rb"
        migration_template "create_logs.rb", "db/migrate/create_logs.rb"
      end

    end
  end
end
