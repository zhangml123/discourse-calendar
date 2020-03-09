# frozen_string_literal: true

# name: discourse-calendar
# about: Display a calendar in the first post of a topic
# version: 0.2
# author: Joffrey Jaffeux
# url: https://github.com/discourse/discourse-calendar

gem "holidays", "8.0.0", require: false

[
  "../lib/calendar_settings_validator.rb",
].each { |path| load File.expand_path(path, __FILE__) }

enabled_site_setting :calendar_enabled



PLUGIN_NAME ||= "calendar"
DATA_PREFIX ||= "data-calendar-"
