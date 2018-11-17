---
to: src/app/services/<%= path %>/<%= h.inflection.dasherize(name) %>.service.spec.ts
---
/* tslint:disable:only-arrow-functions */
/* tslint:disable typedef */

import { <%= h.inflection.camelize(name) %>Service } from './<%= h.inflection.dasherize(name) %>.service';
import { TestBed } from '@angular/core/testing';
import { createSandbox, SinonStubbedInstance } from 'sinon';
import { use, expect } from 'chai';
import * as sinonChai from 'sinon-chai';

use(sinonChai);

const sandbox = createSandbox();
describe('<%= h.inflection.camelize(name) %>Service', function() {
  let subject: <%= h.inflection.camelize(name) %>Service;

  beforeEach(function() {
    TestBed.configureTestingModule({
      imports: [],
      providers: [
        <%= h.inflection.camelize(name) %>Service,
      ],
    });

    subject = TestBed.get(<%= h.inflection.camelize(name) %>Service);
  });

  afterEach(function() {
    sandbox.restore();
  });
});
