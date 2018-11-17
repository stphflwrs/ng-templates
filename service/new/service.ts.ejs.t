---
to: src/app/services/<%= path %>/<%= h.inflection.dasherize(name) %>.service.ts
---
import { Injectable } from '@angular/core';

@Injectable()
class <%= h.inflection.camelize(name) %>Service {

}

export { <%= h.inflection.camelize(name) %>Service };
