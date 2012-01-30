module ApplicationHelper
  # Format text for display.
  def format(text)
    sanitize(markdown(text))
  end

  # Process text with Markdown.
  def markdown(text)
    puts text
    html = BlueCloth::new(text).to_html.html_safe
    puts html
    html
  end

  def coderay(text, type)
    CodeRay.scan(text, type).div(:css => :class)
  end
end
