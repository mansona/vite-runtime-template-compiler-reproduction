import Component from '@glimmer/component';
import { template } from '@ember/template-compiler/runtime';

export default class ConstructorVersion extends Component {
  get component() {
    return template(this.args.templateString)
  }

  <template>
    <this.component />
  </template>
}
