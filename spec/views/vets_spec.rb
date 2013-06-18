require "spec_helper"

describe "vets/index.html.erb" do
  it "displays all the vets" do
    assign(:vets, [
      stub_model(Vet, :name => "Bob"),
      stub_model(Vet, :name => "Mary")
    ])

    render
    expect(rendered).to include("Bob")
    expect(rendered).to include("Mary")
  end
end
