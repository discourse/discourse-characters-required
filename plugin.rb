# frozen_string_literal: true

# name: discourse-characters-required
# about: Show users how many characters are required before posting
# version: 0.1
# authors: Robin Ward

enabled_site_setting :characters_required_enabled

register_asset "stylesheets/characters_required.scss"
