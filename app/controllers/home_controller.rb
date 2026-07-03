# app/controllers/home_controller.rb
#
# Handles the primary content pages. Each action sets its breadcrumb trail
# via @crumb (see LibraryDesign::Crumbs). The simple markdown pages render
# the shared "shared/markdown_page" template; index and data_catalogue have
# their own. No data fetching required - views contain static content.
#
class HomeController < ApplicationController
  def index; end  # Landing page — home crumb only, bespoke template

  def search
    @crumb << { label: "Search", url: nil }
    render "shared/markdown_page"
  end

  def data_services
    @crumb << { label: "Data Services", url: nil }
    render "shared/markdown_page"
  end

  def data_catalogue
    @crumb << { label: "Data Catalogue", url: nil }
  end

  # Data catalogue category pages — nested under the catalogue.
  def members_and_elections
    @crumb << { label: "Data Catalogue", url: data_catalogue_url }
    @crumb << { label: "Members and Elections", url: nil }
    render "shared/markdown_page"
  end

  def parliamentary_business
    @crumb << { label: "Data Catalogue", url: data_catalogue_url }
    @crumb << { label: "Parliamentary Business", url: nil }
    render "shared/markdown_page"
  end

  def committees
    @crumb << { label: "Data Catalogue", url: data_catalogue_url }
    @crumb << { label: "Committees", url: nil }
    render "shared/markdown_page"
  end

  def papers_and_procedure
    @crumb << { label: "Data Catalogue", url: data_catalogue_url }
    @crumb << { label: "Papers and Procedure", url: nil }
    render "shared/markdown_page"
  end

  def legislation
    @crumb << { label: "Data Catalogue", url: data_catalogue_url }
    @crumb << { label: "Legislation", url: nil }
    render "shared/markdown_page"
  end

  def vocabulary
    @crumb << { label: "Vocabulary", url: nil }
    render "shared/markdown_page"
  end

  def apps
    @crumb << { label: "Applications", url: nil }
    render "shared/markdown_page"
  end
end
