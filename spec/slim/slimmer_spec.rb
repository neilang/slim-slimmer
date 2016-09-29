require 'spec_helper'

describe Slim::Slimmer do
  it 'has a version number' do
    expect(Slim::Slimmer::VERSION).not_to be nil
  end

  it 'renders slimmer slim' do
    input = <<~END
              html
                body
                  p Hello world
            END

    output = "<p>Hello world</p>"
    expect(render(input)).to eq(output)
  end
end
