require 'rails_helper'

RSpec.describe "blogs/edit", type: :view do
  before(:each) do
    @blog = assign(:blog, Blog.create!(
      :title => "MyString",
      :subtitle => "MyString",
      :body => "MyText",
      :main_image => "MyText",
      :thumb_image => "MyText"
    ))
  end

  it "renders the edit blog form" do
    render

    assert_select "form[action=?][method=?]", blog_path(@blog), "post" do

      assert_select "input[name=?]", "blog[title]"

      assert_select "input[name=?]", "blog[subtitle]"

      assert_select "textarea[name=?]", "blog[body]"

      assert_select "textarea[name=?]", "blog[main_image]"

      assert_select "textarea[name=?]", "blog[thumb_image]"
    end
  end
end
