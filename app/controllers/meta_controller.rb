# app/controllers/meta_controller.rb
#
# "About this website" pages, grouped under /meta. The hub (index) lists the
# sub-pages; each sub-page renders its markdown via the shared template and
# nests under the hub in the breadcrumb trail.
#
class MetaController < ApplicationController
  def index
    @page_title = "About this website"
    @crumb << { label: "About this website", url: nil }
  end

  def about
    @page_title = "About"
    @crumb << { label: "About this website", url: meta_list_url }
    @crumb << { label: "About", url: nil }
    render "shared/markdown_page"
  end

  def cookies
    @page_title = "Cookie policy"
    @crumb << { label: "About this website", url: meta_list_url }
    @crumb << { label: "Cookies", url: nil }
    render "shared/markdown_page"
  end
end
