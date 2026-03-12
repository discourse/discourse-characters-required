/* eslint-disable ember/no-classic-components, ember/require-tagless-components */
import Component from "@ember/component";
import { computed } from "@ember/object";
import { classNames } from "@ember-decorators/component";
import { i18n } from "discourse-i18n";

@classNames("characters-required")
export default class CharactersRequired extends Component {
  @computed("composer.missingReplyCharacters")
  get showRequired() {
    return this.composer?.missingReplyCharacters > 0;
  }

  <template>
    {{#if this.showRequired}}
      {{i18n "characters_required" count=this.composer.missingReplyCharacters}}
    {{/if}}
  </template>
}
