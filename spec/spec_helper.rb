# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'slim/slimmer'

def render(source)
  Slim::Template.new { source }.render
end
