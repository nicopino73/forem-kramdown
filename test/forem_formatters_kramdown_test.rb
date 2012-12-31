require "minitest_helper"

describe Forem::Formatters::Kramdown do
  subject { Forem::Formatters::Kramdown }

  it "exists" do
    subject.new.must_be_kind_of Forem::Formatters::Kramdown
  end

  describe "self.format" do
    let(:plain_text) { "this is not markdown" }
    let(:plain_html) { "<p>this is not markdown</p>" }
    let(:markdown_text) { "test *is* **markdown**" }
    let(:markdown_html) { "<p>test <em>is</em> <strong>markdown</strong></p>" }

    it { subject.format(plain_text).must_equal plain_html }
    it { subject.format(markdown_text).must_equal markdown_html }
  end

  describe "self.blockquote" do
    it { subject.blockquote("hello").must_equal "> hello" }
    it { subject.blockquote("hello\nworld").must_equal "> hello\n> world" }
  end

  describe "self.syntax_highlight" do
    let(:ruby_html) { %(<pre><code class="ruby">"hello world"</code></pre>) }

    it { subject.syntax_highlight("hello").must_equal "hello" }
    it {
      subject.syntax_highlight(ruby_html).must_match(
        %(<div class="forem_highlight">)
      )
    }
    it {
      subject.syntax_highlight(ruby_html).must_match(
        %(<div class="CodeRay">)
      )
    }
    it {
      subject.syntax_highlight(ruby_html).must_match(
        %(<span class="line-numbers"><a href="#n1" name="n1">1</a></span>)
      )
    }
  end
end
