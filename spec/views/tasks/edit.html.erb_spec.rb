require 'rails_helper'

RSpec.describe "tasks/edit", type: :view do
  let(:task) {
    Task.create!(
      name: "MyString",
      description: "MyText",
      priority: 1,
      status: "MyString",
      project: nil
    )
  }

  before(:each) do
    assign(:task, task)
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(task), "post" do

      assert_select "input[name=?]", "task[name]"

      assert_select "textarea[name=?]", "task[description]"

      assert_select "input[name=?]", "task[priority]"

      assert_select "input[name=?]", "task[status]"

      assert_select "input[name=?]", "task[project_id]"
    end
  end
end
