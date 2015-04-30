require 'rails_helper'

RSpec.describe "sports/index", :type => :view do
  before(:each) do
    assign(:sports, [
      Sport.create!(
        :name => "Name",
        :uid => "Uid",
        :description => "MyText"
      ),
      Sport.create!(
        :name => "Name",
        :uid => "Uid",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of sports" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
