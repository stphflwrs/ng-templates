---
to: src/app/resources/<%= h.inflection.dasherize(name) %>.resource.spec.ts
---
/* tslint:disable:only-arrow-functions */
/* tslint:disable typedef */

import { <%= h.inflection.camelize(name) %>Resource } from './<%= h.inflection.dasherize(name) %>.resource';
import { TestBed } from '@angular/core/testing';
import { createSandbox, SinonStubbedInstance } from 'sinon';
import { use, expect } from 'chai';
import * as sinonChai from 'sinon-chai';

use(sinonChai);

const sandbox = createSandbox();
describe('<%= h.inflection.camelize(name) %>Resource', function() {
  let subject: <%= h.inflection.camelize(name) %>Resource;

  beforeEach(function() {
    TestBed.configureTestingModule({
      imports: [],
      providers: [
        <%= h.inflection.camelize(name) %>Resource,
      ],
    });

    subject = TestBed.get(<%= h.inflection.camelize(name) %>Resource);
  });

  afterEach(function() {
    sandbox.restore();
  });
});
