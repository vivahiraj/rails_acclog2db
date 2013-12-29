module RailsAcclog2db
  module Logging
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def access_logging
        after_filter  :write_log
      end
    end

    def write_log
      log  = Log.new
      user = nil
      if session[:user]
        if session[:user].class == String
          user = session[:user]
        else
          ["code","name","login","login_name"].each do |d|
            begin
              unless session[:user][d].blank?
                user = session[:user][d]
                break
              end
              unless session[:user][d.to_sym].blank?
                user = session[:user][d.to_sym]
                break
              end
            rescue => e
            end
          end
        end
      end
      log.login = user
      log.ip    = request.remote_ip
      log.url   = request.url.slice(0,254)
      log.param = params.inspect
      log.save
    end

  end
end

ActionController::Base.send :include,RailsAcclog2db::Logging
