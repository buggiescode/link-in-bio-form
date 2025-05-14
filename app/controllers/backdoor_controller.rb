class BackdoorController < ApplicationController
  def form
    
    render({ :template => "backdoor_templates/form"})
  end

  def create_item

    item = Item.new
    item.link_url = params.fetch("url")
    item.link_description = params.fetch("description")
    item.thumbnail_url = params.fetch("thumbnail")

    item.save

    redirect_to("/")
  end
end
