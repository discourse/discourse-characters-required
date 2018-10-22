import computed from "ember-addons/ember-computed-decorators";

export default Ember.Component.extend({
  classNames: ["characters-required"],

  @computed("composer.missingReplyCharacters")
  showRequired: missing => missing > 0
});
