require "van_lowe/version"
require "van_lowe/transcript"

module VanLowe

  class Configuration
    attr_writer :store_request_details
    attr_writer :store_successful_requests

    def store_request_details?
      !!@store_request_details
    end

    def store_successful_requests?
      !!@store_successful_requests
    end
  end

  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Configuration.new
      yield configuration
    end
  end

end
