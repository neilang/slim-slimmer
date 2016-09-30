# frozen_string_literal: true
require 'spec_helper'

describe Slim::Slimmer::Pretty do
  subject { render(input) }

  describe 'slimmer option' do
    let(:input) do
      <<~END
        doctype html
        html
          head
            title Example

          body
            h1 Example
      END
    end

    context 'enabled' do
      it { is_expected.to eql '<!DOCTYPE html><title>Example</title><h1>Example</h1>' }
    end

    context 'disabled' do
      before do
        Slim::Engine.options[:slimmer] = false
      end

      after do
        Slim::Engine.options[:slimmer] = true
      end

      it { is_expected.to eql '<!DOCTYPE html><html><head><title>Example</title></head><body><h1>Example</h1></body></html>' }
    end
  end
end
