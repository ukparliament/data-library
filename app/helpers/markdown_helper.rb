module MarkdownHelper
  def render_markdown(filename)
    file_path = Rails.root.join('content', "#{filename}.md")
    return content_tag(:p, "Content not found: #{filename}", class: 'error') unless File.exist?(file_path)

    content = File.read(file_path)
    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      autolink: true,
      tables: true,
      fenced_code_blocks: true,
      strikethrough: true
    )
    markdown.render(content).html_safe
  end
end
