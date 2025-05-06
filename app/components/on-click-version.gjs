import Component from '@glimmer/component';
import { template } from '@ember/template-compiler/runtime';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';

export default class ConstructorVersion extends Component {
  @tracked component;

  clickMe =() =>  {
    this.component = template(this.args.templateString);
  }

  <template>
    <button {{on "click" this.clickMe}} type="button">Click Me</button>
    <this.component />
  </template>
}
