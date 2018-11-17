---
to: src/app/pages/<%= path.replace('./', '') %><%= h.inflection.dasherize(name) %>/<%= h.inflection.dasherize(name) %>.page.spec.ts
---
/* tslint:disable:only-arrow-functions */
/* tslint:disable typedef */

import { <%= h.inflection.camelize(name) %>Page } from './<%= h.inflection.dasherize(name) %>.page';
import { <%= h.inflection.camelize(name) %>PageService } from './<%= h.inflection.dasherize(name) %>.page.service';
import { ComponentFixture, TestBed } from '@angular/core/testing';
import { createSandbox, SinonStubbedInstance } from 'sinon';
import { use, expect } from 'chai';
import * as sinonChai from 'sinon-chai';

use(sinonChai);

const sandbox = createSandbox();
describe('<%= h.inflection.camelize(name) %>Page', function() {
  let subject: <%= h.inflection.camelize(name) %>Page;
  let fixture: ComponentFixture<<%= h.inflection.camelize(name) %>Page>;
  let <%= h.inflection.camelize(name, true) %>PageService: SinonStubbedInstance<<%= h.inflection.camelize(name) %>PageService>;

  beforeEach(function() {
    <%= h.inflection.camelize(name, true) %>PageService = sandbox.createStubInstance(<%= h.inflection.camelize(name) %>PageService);
    TestBed.configureTestingModule({
      imports: [],
      providers: [
        { provide: <%= h.inflection.camelize(name) %>PageService, useValue: <%= h.inflection.camelize(name, true) %>PageService },
      ],
    });

    fixture = TestBed.createComponent(<%= h.inflection.camelize(name) %>Page);
    subject = fixture.componentInstance;
  });

  afterEach(function() {
    sandbox.restore();
  });
});
