# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "spud_inquiries"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Estes"]
  s.date = "2012-01-21"
  s.email = "destes@redwindsw.com"
  s.files = [
    "app/assets/images/spud/admin/contacts_thumb.png",
    "app/assets/javascripts/spud/admin/inquiries/application.js",
    "app/assets/javascripts/spud/user_sessions.js",
    "app/assets/stylesheets/spud/admin/inquiries.css",
    "app/assets/stylesheets/spud/admin/inquiry_forms.css",
    "app/controllers/spud/admin/inquiries_controller.rb",
    "app/controllers/spud/admin/inquiry_forms_controller.rb",
    "app/helpers/spud/admin/inquiries_helper.rb",
    "app/helpers/spud/admin/inquiry_forms_helper.rb",
    "app/helpers/spud/admin/users_helper.rb",
    "app/helpers/spud/user_sessions_helper.rb",
    "app/models/spud_inquiry.rb",
    "app/models/spud_inquiry_field.rb",
    "app/models/spud_inquiry_form.rb",
    "app/models/spud_inquiry_form_field.rb",
    "app/views/spud/admin/inquiries/index.html.erb",
    "app/views/spud/admin/inquiry_forms/_form.html.erb",
    "app/views/spud/admin/inquiry_forms/_spud_inquiry_form_field_fields.html.erb",
    "app/views/spud/admin/inquiry_forms/edit.html.erb",
    "app/views/spud/admin/inquiry_forms/index.html.erb",
    "app/views/spud/admin/inquiry_forms/new.html.erb",
    "config/application.rb",
    "config/boot.rb",
    "config/routes.rb",
    "lib/spud_inquiries.rb",
    "lib/spud_inquiries/configuration.rb",
    "lib/spud_inquiries/engine.rb"
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Spud Inquiry/Contact Form Engine"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spud_admin>, [">= 0"])
    else
      s.add_dependency(%q<spud_admin>, [">= 0"])
    end
  else
    s.add_dependency(%q<spud_admin>, [">= 0"])
  end
end

