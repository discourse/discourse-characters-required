import { setupRenderingTest } from "discourse/tests/helpers/component-test";
import { module, test } from "qunit";
import { render } from "@ember/test-helpers";
import { hbs } from "ember-cli-htmlbars";

module("Integration | Component | characters-required", function (hooks) {
  setupRenderingTest(hooks);

  test("it renders", async function (assert) {
    this.set("composer", { missingReplyCharacters: 10 });

    await render(hbs`<CharactersRequired @composer={{this.composer}} />`);

    assert.equal(
      this.element.querySelector("div").innerText,
      "10 characters required",
      "shows characters required"
    );
  });
});
