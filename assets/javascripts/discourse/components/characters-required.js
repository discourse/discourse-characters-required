import discourseComputed from "discourse-common/utils/decorators";
import Component from "@ember/component";

export default Component.extend({
  classNames: ["characters-required"],

  @discourseComputed("composer.missingReplyCharacters")
  showRequired: (missing) => missing > 0,
});
