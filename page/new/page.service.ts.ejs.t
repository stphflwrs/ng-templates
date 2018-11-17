---
to: src/app/pages/<%= path.replace('./', '') %><%= h.inflection.dasherize(name) %>/<%= h.inflection.dasherize(name) %>.page.service.ts
---
import { Injectable } from '@angular/core';

@Injectable()
class <%= h.inflection.camelize(name) %>PageService {

}

export { <%= h.inflection.camelize(name) %>PageService };
