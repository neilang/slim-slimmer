# frozen_string_literal: true
require 'spec_helper'

describe 'optional start tag' do
  subject { render(input) }

  describe 'html' do
    context 'without attributes' do
      let(:input) { 'html' }

      it { is_expected.to eql('') }
    end

    context 'with attributes' do
      let(:input) { 'html lang="en"' }

      it { is_expected.to eql('<html lang="en">') }
    end
  end

  describe 'head' do
    context 'without attributes' do
      let(:input) { 'head' }

      it { is_expected.to eql('') }
    end

    context 'with attributes' do
      let(:input) { 'head.main' }

      it { is_expected.to eql('<head class="main">') }
    end
  end

  describe 'body' do
    context 'without attributes' do
      let(:input) { 'body' }

      it { is_expected.to eql('') }
    end

    context 'with attributes' do
      let(:input) { 'body.main' }

      it { is_expected.to eql('<body class="main">') }
    end
  end
end
