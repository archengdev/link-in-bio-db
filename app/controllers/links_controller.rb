class LinksController < ApplicationController
  def index
    render({:template => "links_templates/index"})
  end
end
