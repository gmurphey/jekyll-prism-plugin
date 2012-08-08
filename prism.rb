module Jekyll

  class PrismBlock < HighlightBlock
    def render_codehighlighter(context, code)
      <<-HTML
<div>
  <pre><code class='language-#{@lang}'>#{h(code).strip}</code></pre>
</div>
      HTML
    end
  end

end

Liquid::Template.register_tag('prism', Jekyll::PrismBlock)
