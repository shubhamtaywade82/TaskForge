require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      name: "MyString",
      description: "MyText",
      priority: 1,
      status: "MyString",
      project: nil
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input[name=?]", "task[name]"

      assert_select "textarea[name=?]", "task[description]"

      assert_select "input[name=?]", "task[priority]"

      assert_select "input[name=?]", "task[status]"

      assert_select "input[name=?]", "task[project_id]"
    end
  end
end
