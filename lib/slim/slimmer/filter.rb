module Slim
  module Slimmer
    class Filter < ::Slim::Filter
      # TODO: make these configurable
      OPTIONAL_TAGS = %w(html head body).freeze

      define_options slimmer: true

      def call(exp)
        options[:slimmer] ? super : exp
      end

      def on_html_tag(name, attrs, content = nil)
        return super unless OPTIONAL_TAGS.include?(name)
        keep = attrs.size > 1
        keep ? super : compile(content)
      end
    end
  end
end
