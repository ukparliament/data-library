# app/helpers/breadcrumbs_helper.rb
#
# Generates breadcrumb navigation for static pages.
# Returns array of { label:, url: } hashes for rendering.
#
module BreadcrumbsHelper
  def breadcrumbs
    crumbs = [{ label: "Data Library", url: root_path }]

    case action_name
    when "index"
      crumbs << { label: "Home", url: nil }
    when "about"
      crumbs << { label: "About", url: nil }
    when "help"
      crumbs << { label: "Help", url: nil }
    when "search"
      crumbs << { label: "Search", url: nil }
    when "data_services"
      crumbs << { label: "Data Services", url: nil }
    when "data_catalogue"
      crumbs << { label: "Data Catalogue", url: nil }
    when "apps"
      crumbs << { label: "Applications", url: nil }
    end

    crumbs
  end
end
