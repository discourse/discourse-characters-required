# frozen_string_literal: true

# name: discourse-characters-required
# about: Adds a count of characters required to create a post in the composer.
# meta_topic_id: 77195
# version: 0.1
# authors: Robin Ward
# url: https://github.com/discourse/discourse-characters-required

enabled_site_setting :characters_required_enabled

register_asset "stylesheets/characters_required.scss"
