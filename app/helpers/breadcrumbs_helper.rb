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
    when "thesaurus"
      crumbs << { label: "Thesaurus", url: nil }
    when "data_catalogue"
      crumbs << { label: "Data Catalogue", url: nil }
    when "tools"
      crumbs << { label: "Tools", url: nil }
    when "roadmap"
      crumbs << { label: "Roadmap", url: nil }
    end

    crumbs
  end
end
