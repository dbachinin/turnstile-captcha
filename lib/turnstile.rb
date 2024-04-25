# frozen_string_literal: true

require "turnstile/version"
require "turnstile/configuration"
require "turnstile/controller_methods"
require "turnstile/view_helpers"
require "turnstile/verification"

require "turnstile/railtie" if defined?(Rails)

module Turnstile
  extend self

  def configuration
    @configuration ||= Configuration.new
  end

  def configure
    yield(configuration)
  end
end
