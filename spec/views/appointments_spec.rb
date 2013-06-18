require "spec_helper"

describe "appointments/index.html.erb" do
  
  let(:time_of_visit) { DateTime.now }
  
  it "displays all the appointments" do
    assign(:appointments, [
      stub_model(Appointment, :reason_for_visit => 'sick', :visit_date=>time_of_visit),
      stub_model(Appointment, :reason_for_visit => 'hair cutt', :visit_date=>time_of_visit)
    ])

    render
    expect(rendered).to include('sick')
    expect(rendered).to include('hair cutt')
  end
end
