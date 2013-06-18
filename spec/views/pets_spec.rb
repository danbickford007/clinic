require "spec_helper"

describe "pets/index.html.erb" do
  it "displays all the pets" do
    assign(:pets, [
      stub_model(Pet, :name => "slicer"),
      stub_model(Pet, :name => "dicer")
    ])

    render
    expect(rendered).to include("slicer")
    expect(rendered).to include("dicer")
  end
end
