require 'rails_helper'

RSpec.describe "sports/edit", :type => :view do
  before(:each) do
    @sport = assign(:sport, Sport.create!(
      :name => "MyString",
      :uid => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit sport form" do
    render

    assert_select "form[action=?][method=?]", sport_path(@sport), "post" do

      assert_select "input#sport_name[name=?]", "sport[name]"

      assert_select "input#sport_uid[name=?]", "sport[uid]"

      assert_select "textarea#sport_description[name=?]", "sport[description]"
    end
  end
end
