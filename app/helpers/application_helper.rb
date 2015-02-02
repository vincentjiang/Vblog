module ApplicationHelper
  def page_title
    @page_title || ENV["BLOG_NAME"]
  end

  def meta_description
    @meta_description || "VincentJiang's Blog"
  end

  def keyword
    @keyword = "#{@post.title if @post} ruby rails RubyOnRails web develop"
  end

end
