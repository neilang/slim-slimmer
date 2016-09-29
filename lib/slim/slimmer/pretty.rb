module Slim
  module Slimmer
    class Pretty < ::Temple::HTML::Pretty
      OPTIONAL_CLOSE_TAGS = %w(caption colgroup dd dt li menuitem optgroup option p rt rp tbody tfoot thead td th
                               tr).freeze

      def on_html_tag(name, attrs, content = nil)
        super.tap do |html|
          html.pop if OPTIONAL_CLOSE_TAGS.include?(name)
        end
      end
    end
  end
end
