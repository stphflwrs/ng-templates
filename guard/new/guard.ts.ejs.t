---
to: src/app/services/guards/<%= h.inflection.dasherize(name) %>.guard.ts
---
import { Injectable } from '@angular/core';
import { CanActivate } from '@angular/router';
import { Observable } from 'rxjs';

@Injectable()
class <%= h.inflection.camelize(name) %>Guard implements CanActivate {
  public canActivate(): Observable<boolean> | Promise<boolean> | boolean {
    return false;
  }
}

export { <%= h.inflection.camelize(name) %>Guard };
