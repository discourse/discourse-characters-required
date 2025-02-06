import Component from "@ember/component";
import { classNames } from "@ember-decorators/component";
import discourseComputed from "discourse/lib/decorators";

@classNames("characters-required")
export default class CharactersRequired extends Component {
  @discourseComputed("composer.missingReplyCharacters")
  showRequired(missing) {
    return missing > 0;
  }
}
