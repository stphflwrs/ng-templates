---
to: src/app/services/redirects/<%= h.inflection.dasherize(name) %>.redirect.spec.ts
---
/* tslint:disable:only-arrow-functions */
/* tslint:disable typedef */

import { <%= h.inflection.camelize(name) %>Redirect } from './<%= h.inflection.dasherize(name) %>.redirect';
import { TestBed } from '@angular/core/testing';
import { createSandbox, SinonStubbedInstance } from 'sinon';
import { use, expect } from 'chai';
import * as sinonChai from 'sinon-chai';

use(sinonChai);

const sandbox = createSandbox();
describe('<%= h.inflection.camelize(name) %>Redirect', function() {
  let subject: <%= h.inflection.camelize(name) %>Redirect;

  beforeEach(function() {
    TestBed.configureTestingModule({
      imports: [],
      providers: [
        <%= h.inflection.camelize(name) %>Redirect,
      ],
    });

    subject = TestBed.get(<%= h.inflection.camelize(name) %>Redirect);
  });

  afterEach(function() {
    sandbox.restore();
  });
});
