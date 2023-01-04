import discourseComputed from "discourse-common/utils/decorators";
import Ember from "ember";

export default Ember.Component.extend({
  classNames: ["characters-required"],

  @discourseComputed("composer.missingReplyCharacters")
  showRequired: (missing) => missing > 0,
});
