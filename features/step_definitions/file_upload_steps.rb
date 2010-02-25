When /^I attach "([^\"]*)" image to the "([^\"]*)" file field$/ do |filename, field|
  type = filename.split(".")[1]

  if type == "jpg"
    type = "image/jpeg"
  end

  attach_file field, File.join(Rails.root, "features", "assets", filename), type
end

Given /^the image "([^\"]*)" has been uploaded$/ do |image|
  Given %{I have signed in with "theo@jivatechnology.com/foo"}
  When %{I go to the new food page}
  When %{I attach "#{image}" image to the "food_picture" file field}
  When %{I press "Upload"}
  When %{I sign out}
end

Then /^I should see the image "([^\"]*)"$/ do |image|
  assert_select "img[alt='#{image.titleize}']"
end
