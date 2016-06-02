require 'rails_helper'

RSpec.describe "communities/edit", :type => :view do
  before(:each) do
    @community = assign(:community, Community.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit community form" do
    render

    assert_select "form[action=?][method=?]", community_path(@community), "post" do

      assert_select "input#community_name[name=?]", "community[name]"

      assert_select "textarea#community_description[name=?]", "community[description]"
    end
  end
end
