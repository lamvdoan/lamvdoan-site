module BlogsHelper
  class CodeRayify < Redcarpet::Render::HTML
    def block_code code, language
      CodeRay.scan(code, language).div
    end
  end

  def markdown text
    if !text.nil?
      coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

      settings = {
        fenced_code_blocks: true,
        no_intra_emphasis: true,
        autolink: true,
        superscript: true
      }

      markdown = Redcarpet::Markdown.new(coderayified, settings)
      markdown.render(text).html_safe
    end
  end

  def standard_date_format date
    if !date.nil?
      date.strftime("%B %d, %Y")
    end
  end
end
