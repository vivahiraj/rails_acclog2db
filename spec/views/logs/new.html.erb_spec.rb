require 'spec_helper'

describe "logs/new" do
  before(:each) do
    assign(:log, stub_model(Log).as_new_record)
  end

  it "renders new log form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", logs_path, "post" do
    end
  end
end
