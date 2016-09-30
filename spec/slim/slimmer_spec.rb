# frozen_string_literal: true
require 'spec_helper'

describe Slim::Slimmer do
  subject { render(input) }

  describe 'optional p end tag' do
    let(:input) do
      <<~END
        p foo
      END
    end

    it { is_expected.to eql('<p>foo') }
  end
end
