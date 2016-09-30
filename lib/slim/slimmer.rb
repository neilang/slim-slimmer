# frozen_string_literal: true
require 'slim'
require 'slim/slimmer/pretty'
require 'slim/slimmer/version'

module Slim
  module Slimmer
  end
end

Slim::Engine.replace :Pretty, Slim::Slimmer::Pretty
