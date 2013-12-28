class Log < ActiveRecord::Base
  attr_accessible :login, :ip, :url, :param
end
