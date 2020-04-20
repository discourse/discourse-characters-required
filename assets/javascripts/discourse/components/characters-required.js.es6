import discourseComputed from "discourse-common/utils/decorators";

export default Ember.Component.extend({
  classNames: ["characters-required"],

  @discourseComputed("composer.missingReplyCharacters")
  showRequired: missing => missing > 0
});
