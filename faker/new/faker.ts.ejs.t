---
to: src/app/services/fakers/<%= h.inflection.dasherize(name) %>.faker.ts
---
import { Injectable } from '@angular/core';
import { <%= h.inflection.camelize(name) %> } from '@groupby/enrich-models/iam/<%= h.inflection.camelize(name, true) %>';
import { random } from 'faker';
import { range } from 'lodash';

@Injectable()
class <%= h.inflection.camelize(name) %>Faker {
  public <%= h.inflection.camelize(name, true) %>(): <%= h.inflection.camelize(name) %> {
    return new <%= h.inflection.camelize(name) %>({
      // TODO: Fill me in
    });
  }

  public <%= h.inflection.pluralize(h.inflection.camelize(name, true)) %>(count: number = null): <%= h.inflection.camelize(name) %>[] {
    const amount: number = count || random.number({ min: 0, max: 15 });

    const <%= h.inflection.pluralize(h.inflection.camelize(name, true)) %>: <%= h.inflection.camelize(name) %>[] = [];
    for (let x of range(amount)) {
      <%= h.inflection.pluralize(h.inflection.camelize(name, true)) %>.push(this.<%= h.inflection.camelize(name, true) %>());
    }
    return <%= h.inflection.pluralize(h.inflection.camelize(name, true)) %>;
  }
}

export { <%= h.inflection.camelize(name) %>Faker };
