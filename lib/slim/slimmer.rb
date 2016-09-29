require 'slim'
require 'slim/slimmer/filter'
require 'slim/slimmer/version'

module Slim
  module Slimmer
  end
end

Slim::Engine.before :Pretty, Slim::Slimmer::Filter
