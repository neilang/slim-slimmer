# frozen_string_literal: true
require 'spec_helper'

describe 'optional end tag' do
  subject { render(input) }

  describe 'body' do
    let(:input) { 'body.main foo' }

    it { is_expected.to eql('<body class="main">foo') }
  end

  describe 'caption' do
    let(:input) { 'caption foo' }

    it { is_expected.to eql('<caption>foo') }
  end

  describe 'colgroup' do
    let(:input) { 'colgroup foo' }

    it { is_expected.to eql('<colgroup>foo') }
  end

  describe 'dd' do
    let(:input) { 'dd foo' }

    it { is_expected.to eql('<dd>foo') }
  end

  describe 'dt' do
    let(:input) { 'dt foo' }

    it { is_expected.to eql('<dt>foo') }
  end

  describe 'head' do
    let(:input) { 'head.bar foo' }

    it { is_expected.to eql('<head class="bar">foo') }
  end

  describe 'html' do
    let(:input) { 'html lang="en" foo' }

    it { is_expected.to eql('<html lang="en">foo') }
  end

  describe 'li' do
    let(:input) { 'li foo' }

    it { is_expected.to eql('<li>foo') }
  end

  describe 'menuitem' do
    let(:input) { 'menuitem foo' }

    it { is_expected.to eql('<menuitem>foo') }
  end

  describe 'optgroup' do
    let(:input) { 'optgroup foo' }

    it { is_expected.to eql('<optgroup>foo') }
  end

  describe 'option' do
    let(:input) { 'option foo' }

    it { is_expected.to eql('<option>foo') }
  end

  describe 'p' do
    let(:input) { 'p foo' }

    it { is_expected.to eql('<p>foo') }
  end

  describe 'rp' do
    let(:input) { 'rp foo' }

    it { is_expected.to eql('<rp>foo') }
  end

  describe 'rt' do
    let(:input) { 'rt foo' }

    it { is_expected.to eql('<rt>foo') }
  end

  describe 'tbody' do
    let(:input) { 'tbody foo' }

    it { is_expected.to eql('<tbody>foo') }
  end

  describe 'td' do
    let(:input) { 'td foo' }

    it { is_expected.to eql('<td>foo') }
  end

  describe 'tfoot' do
    let(:input) { 'tfoot foo' }

    it { is_expected.to eql('<tfoot>foo') }
  end

  describe 'th' do
    let(:input) { 'th foo' }

    it { is_expected.to eql('<th>foo') }
  end

  describe 'thead' do
    let(:input) { 'thead foo' }

    it { is_expected.to eql('<thead>foo') }
  end

  describe 'tr' do
    let(:input) { 'tr foo' }

    it { is_expected.to eql('<tr>foo') }
  end
end
