require "rails_helper"

describe "/" do
  it "lists the URL and URL description of each Link record in the database", points: 5 do
    
    link_1 = Link.new
    link_1.url = "https://en.wikipedia.org/wiki/Frog"
    link_1.url_description = "Wikipedia Frog Article"
    link_1.image = "https://upload.wikimedia.org/wikipedia/commons/4/4f/Bombina_bombina_1_%28Marek_Szczepanek%29_tight_crop.jpg"
    link_1.image_description = "Wikipedia Frog Page"
    link_1.save

    link_2 = Link.new
    link_2.url = "https://rubyonrails.org/"
    link_2.url_description = "Rails Homepage"
    link_2.image = "https://upload.wikimedia.org/wikipedia/commons/6/62/Ruby_On_Rails_Logo.svg"
    link_2.image_description = "Rails Logo"
    link_2.save

    visit "/"

    expect(page).to have_tag("a", :with => { :href => "#{link_1.url}" }, :text => /#{link_1.url_description}/),
      "Expected page to have a link with the text #{link_1.url_description} and an href of #{link_1.url}"
    
    expect(page).to have_tag("a", :with => { :href => "#{link_2.url}" }, :text => /#{link_2.url_description}/),
      "Expected page to have a link with the text #{link_2.url_description} and an href of #{link_2.url}"
  end
end
