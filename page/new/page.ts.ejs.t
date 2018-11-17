---
to: src/app/pages/<%= path.replace('./', '') %><%= h.inflection.dasherize(name) %>/<%= h.inflection.dasherize(name) %>.page.ts
---
import { Component, OnDestroy, OnInit } from '@angular/core';
import { Subject } from 'rxjs';

@Component({
  selector: 'enrich-<%= h.inflection.dasherize(name) %>-page',
  templateUrl: './<%= h.inflection.dasherize(name) %>.page.html',
  styleUrls: ['./<%= h.inflection.dasherize(name) %>.page.scss'],
})
class <%= h.inflection.camelize(name) %>Page implements OnInit, OnDestroy {
  private ngUnsubscribe: Subject<void> = new Subject<void>();

  public ngOnInit(): void {

  }

  public ngOnDestroy(): void {
    this.ngUnsubscribe.next();
    this.ngUnsubscribe.complete();
  }
}

export { <%= h.inflection.camelize(name) %>Page };
