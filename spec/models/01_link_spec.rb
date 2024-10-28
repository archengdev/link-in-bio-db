require "rails_helper"

describe "Link" do
  it "has a class defined in app/models/", points: 1 do
    expect{ Link }.to_not raise_error,
      "Expected a Link class to be defined in the app/models/ folder, but didn't find one."
  end
end
