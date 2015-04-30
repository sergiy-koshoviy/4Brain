require 'rails_helper'

RSpec.describe "sports/show", :type => :view do
  before(:each) do
    @sport = assign(:sport, Sport.create!(
      :name => "Name",
      :uid => "Uid",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uid/)
    expect(rendered).to match(/MyText/)
  end
end
