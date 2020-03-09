# frozen_string_literal: true

# name: discourse-calendar
# about: Display a calendar in the first post of a topic
# version: 0.2
# author: Joffrey Jaffeux
# url: https://github.com/discourse/discourse-calendar


enabled_site_setting :calendar_enabled



PLUGIN_NAME ||= "calendar"
DATA_PREFIX ||= "data-calendar-"
