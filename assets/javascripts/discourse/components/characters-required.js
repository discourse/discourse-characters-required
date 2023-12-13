import Component from "@ember/component";
import discourseComputed from "discourse-common/utils/decorators";

export default Component.extend({
  classNames: ["characters-required"],

  @discourseComputed("composer.missingReplyCharacters")
  showRequired: (missing) => missing > 0,
});
