---
to: src/app/services/guards/<%= h.inflection.dasherize(name) %>.guard.spec.ts
---
/* tslint:disable:only-arrow-functions */
/* tslint:disable typedef */

import { <%= h.inflection.camelize(name) %>Guard } from './<%= h.inflection.dasherize(name) %>.guard';
import { TestBed } from '@angular/core/testing';
import { createSandbox, SinonStubbedInstance } from 'sinon';
import { use, expect } from 'chai';
import * as sinonChai from 'sinon-chai';

use(sinonChai);

const sandbox = createSandbox();
describe('<%= h.inflection.camelize(name) %>Guard', function() {
  let subject: <%= h.inflection.camelize(name) %>Guard;

  beforeEach(function() {
    TestBed.configureTestingModule({
      imports: [],
      providers: [
        <%= h.inflection.camelize(name) %>Guard,
      ],
    });

    subject = TestBed.get(<%= h.inflection.camelize(name) %>Guard);
  });

  afterEach(function() {
    sandbox.restore();
  });
});
