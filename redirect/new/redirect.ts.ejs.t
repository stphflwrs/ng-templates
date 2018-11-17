---
to: src/app/services/redirects/<%= h.inflection.dasherize(name) %>.redirect.ts
---
import { Injectable } from '@angular/core';
import { CanActivate } from '@angular/router';
import { Observable } from 'rxjs';

@Injectable()
class <%= h.inflection.camelize(name) %>Redirect implements CanActivate {
  public canActivate(): Observable<boolean> | Promise<boolean> | boolean {
    return false;
  }
}

export { <%= h.inflection.camelize(name) %>Redirect };
