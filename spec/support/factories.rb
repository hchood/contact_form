FactoryGirl.define do
  factory :contact do
    email "jsmith@gmail.com"
    subject "an awesome subject"
    description "this is the body of a contact inquiry"
    first_name "John"
    last_name "Smith"
  end
end
