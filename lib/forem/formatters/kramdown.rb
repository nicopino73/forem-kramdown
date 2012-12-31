require "active_support/core_ext/string"
require "coderay"
require "kramdown"
require "nokogiri"

module Forem
  module Formatters

    # Public: Various methods useful for formatting text with Kramdown.
    class Kramdown
      def self.format(text)
        renderer = ::Kramdown::Document.new(text.to_s)
        syntax_highlight(renderer.to_html).html_safe
      end

      def self.blockquote(text)
        text.to_s.split("\n").map { |line| "> #{line}" }.join("\n")
      end

      def self.syntax_highlight(html)
        doc = ::Nokogiri::HTML::DocumentFragment.parse(html.to_s)
        doc.css("pre code[@class]").each do |code|
          line_numbers = { :line_numbers => :inline }
          language = code[:class].to_sym
          syntax = CodeRay.scan(code.text.rstrip, language).div(line_numbers)
          code.replace %(<div class="forem_highlight">#{syntax}</div>)
        end
        doc.to_s.html_safe
      end
    end
  end
end
