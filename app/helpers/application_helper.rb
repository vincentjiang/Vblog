module ApplicationHelper
  def page_title
    @page_title || ENV["BLOG_NAME"]
  end
end
