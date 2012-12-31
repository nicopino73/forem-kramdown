require "forem/formatters/kramdown"

if Forem.respond_to?(:formatter=)
  Forem.formatter = Forem::Formatters::Kramdown
end
