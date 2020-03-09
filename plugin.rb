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

register_asset "stylesheets/vendor/fullcalendar.min.css"
register_asset "stylesheets/common/discourse-calendar.scss"
register_asset "stylesheets/mobile/discourse-calendar.scss", :mobile
register_asset "stylesheets/desktop/discourse-calendar.scss", :desktop

PLUGIN_NAME ||= "calendar"
DATA_PREFIX ||= "data-calendar-"
