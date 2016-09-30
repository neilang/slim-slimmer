# frozen_string_literal: true
module Slim
  module Slimmer
    class Pretty < ::Temple::HTML::Pretty
      OPTIONAL_START_TAGS = %w(html head body).freeze
      OPTIONAL_CLOSE_TAGS = %w(body caption colgroup dd dt head html li menuitem optgroup option p rp rt tbody td tfoot
                               th thead tr).freeze

      define_options slimmer: true

      def on_html_tag(name, attrs, content = nil)
        return super unless options[:slimmer]
        super.tap do |html|
          remove_optional_start_tag(html, name, attrs)
          remove_optional_end_tag(html, name)
        end
      end

      private

      def remove_optional_start_tag(html, name, attrs)
        return unless OPTIONAL_START_TAGS.include?(name)
        return if attrs.size > 1
        html.slice!(1..3)
      end

      def remove_optional_end_tag(html, name)
        return unless OPTIONAL_CLOSE_TAGS.include?(name)
        html.pop
      end
    end
  end
end
