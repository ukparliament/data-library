# app/controllers/home_controller.rb
#
# Handles static information pages.
# Each action simply renders its corresponding view template.
# No data fetching required - views contain static content.
#
class HomeController < ApplicationController
  def index;          end  # Landing page
  def about;          end  # About the Data Library
  def help;           end  # User help/documentation
  def search;         end  # Search page (placeholder)
  def data_services;  end  # API/data services info
  def data_catalogue; end  # Data catalogue info
  def apps;           end  # Applications info
end