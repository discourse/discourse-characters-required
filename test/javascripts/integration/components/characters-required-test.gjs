import { render } from "@ember/test-helpers";
import { module, test } from "qunit";
import { setupRenderingTest } from "discourse/tests/helpers/component-test";
import CharactersRequired from "discourse/plugins/discourse-characters-required/discourse/components/characters-required";

module("Integration | Component | characters-required", function (hooks) {
  setupRenderingTest(hooks);

  test("it renders", async function (assert) {
    const composer = { missingReplyCharacters: 10 };

    await render(
      <template><CharactersRequired @composer={{composer}} /></template>
    );

    assert
      .dom("div", this.element)
      .hasText("10 characters required", "shows characters required");
  });
});
