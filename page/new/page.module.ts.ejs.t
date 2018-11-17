---
to: src/app/pages/<%= path.replace('./', '') %><%= h.inflection.dasherize(name) %>/<%= h.inflection.dasherize(name) %>.page.module.ts
---
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FlexLayoutModule } from '@angular/flex-layout';
import { <%= h.inflection.camelize(name) %>Page } from './<%= h.inflection.dasherize(name) %>.page';
import { <%= h.inflection.camelize(name) %>PageService } from './<%= h.inflection.dasherize(name) %>.page.service';

@NgModule({
  imports: [
    CommonModule,
    FlexLayoutModule,
  ],
  declarations: [
    <%= h.inflection.camelize(name) %>Page,
  ],
  providers: [<%= h.inflection.camelize(name) %>PageService],
  exports: [<%= h.inflection.camelize(name) %>Page],
})
class <%= h.inflection.camelize(name) %>PageModule {}

export { <%= h.inflection.camelize(name) %>PageModule };
