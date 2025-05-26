import Component from "@ember/component";
import { classNames } from "@ember-decorators/component";
import discourseComputed from "discourse/lib/decorators";
import { i18n } from "discourse-i18n";

@classNames("characters-required")
export default class CharactersRequired extends Component {
  @discourseComputed("composer.missingReplyCharacters")
  showRequired(missing) {
    return missing > 0;
  }

  <template>
    {{#if this.showRequired}}
      {{i18n "characters_required" count=this.composer.missingReplyCharacters}}
    {{/if}}
  </template>
}
