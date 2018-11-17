---
to: src/app/pages/<%= path.replace('./', '') %><%= h.inflection.dasherize(name) %>/<%= h.inflection.dasherize(name) %>.page.service.spec.ts
---
/* tslint:disable:only-arrow-functions */
/* tslint:disable typedef */

import { <%= h.inflection.camelize(name) %>PageService } from './<%= h.inflection.dasherize(name) %>.page.service';
import { TestBed } from '@angular/core/testing';
import { createSandbox, SinonStubbedInstance } from 'sinon';
import { use, expect } from 'chai';
import * as sinonChai from 'sinon-chai';

use(sinonChai);

const sandbox = createSandbox();
describe('<%= h.inflection.camelize(name) %>PageService', function() {
  let subject: <%= h.inflection.camelize(name) %>PageService;

  beforeEach(function() {
    TestBed.configureTestingModule({
      imports: [],
      providers: [
        <%= h.inflection.camelize(name) %>PageService,
      ],
    });

    subject = TestBed.get(<%= h.inflection.camelize(name) %>PageService);
  });

  afterEach(function() {
    sandbox.restore();
  });
});
