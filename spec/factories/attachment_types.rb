FactoryGirl.define do
  factory :attachment_type do
    uid ""
code "MyString"
name "MyString"
is_default false
is_user_attached false
is_system_generated false
is_template false
is_auto_attached_when_parent_is_emailed false
  end

end
