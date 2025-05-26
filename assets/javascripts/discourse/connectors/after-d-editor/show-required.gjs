import Component from "@ember/component";
import { classNames, tagName } from "@ember-decorators/component";
import CharactersRequired from "../../components/characters-required";

@tagName("div")
@classNames("after-d-editor-outlet", "show-required")
export default class ShowRequired extends Component {
  static shouldRender(args) {
    return args && args.editorType === "composer";
  }

  <template><CharactersRequired @composer={{this.composer}} /></template>
}
