require 'spec_helper'

describe Slim::Slimmer::Filter do
  subject { render(input) }

  describe 'slimmer option' do
    let(:input) do
      <<~END
        body
          p Hello world
      END
    end

    context 'enabled' do
      it { is_expected.to eql "<p>Hello world</p>" }
    end

    context 'disabled' do
      before do
        Slim::Engine.options[:slimmer] = false
      end

      after do
        Slim::Engine.options[:slimmer] = true
      end

      it { is_expected.to eql "<body><p>Hello world</p></body>" }
    end
  end

  describe 'optional HTML tag' do
    context 'without attributes' do
      let(:input) do
        <<~END
          doctype html
          html
        END
      end

      it { is_expected.to eql('<!DOCTYPE html>') }
    end

    context 'with attributes' do
      let(:input) do
        <<~END
          doctype html
          html lang="en"
        END
      end

      it { is_expected.to eql('<!DOCTYPE html><html lang="en"></html>') }
    end
  end

  describe 'optional HEAD tag' do
    context 'without attributes' do
      let(:input) do
        <<~END
          head
            meta name="keywords"
        END
      end

      it { is_expected.to eql('<meta name="keywords" />') }
    end

    context 'with attributes' do
      let(:input) do
        <<~END
          head data-attr="head"
            meta name="keywords"
        END
      end

      it { is_expected.to eql('<head data-attr="head"><meta name="keywords" /></head>') }
    end
  end

  describe 'optional BODY tags' do
    context 'without attributes' do
      let(:input) do
        <<~END
          body
            p foo
        END
      end

      it { is_expected.to eql('<p>foo</p>') }
    end

    context 'with attributes' do
      let(:input) do
        <<~END
          body.main
            p hi!
        END
      end

      it { is_expected.to eql('<body class="main"><p>hi!</p></body>') }
    end
  end
end
