---
to: src/app/resources/<%= h.inflection.dasherize(name) %>.resource.ts
---
<% if (isCrudResource) { %>
import { CrudResource } from './base-crud.resource';
import {
  I<%= h.inflection.camelize(name) %>,
  I<%= h.inflection.camelize(name) %>Patch,
  I<%= h.inflection.camelize(name) %>Post,
  <%= h.inflection.camelize(name) %>,
} from '@groupby/enrich-models/iam/<%= h.inflection.dasherize(name) %>';
import { <%= h.inflection.camelize(name) %>Serializer } from '@groupby/enrich-models/iam/<%= h.inflection.dasherize(name) %>.serializer';
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable()
class <%= h.inflection.camelize(name) %>Resource extends CrudResource<<%= h.inflection.camelize(name) %>, I<%= h.inflection.camelize(name) %>, I<%= h.inflection.camelize(name) %>Patch, I<%= h.inflection.camelize(name) %>Post> {
  protected resource: string = '<%= h.inflection.pluralize(h.inflection.camelize(name, true)) %>';
  protected serializer: <%= h.inflection.camelize(name) %>Serializer = new <%= h.inflection.camelize(name) %>Serializer();

  public constructor(protected httpClient: HttpClient) {
    super(httpClient);
  }

  public get<%= h.inflection.pluralize(h.inflection.camelize(name)) %>: () => Observable<<%= h.inflection.camelize(name) %>[]> = this.all;
  public get<%= h.inflection.camelize(name) %>: (<%= h.inflection.camelize(name, true) %>Id: string) => Observable<<%= h.inflection.camelize(name) %>> = this.get;
}

export { <%= h.inflection.camelize(name) %>Resource };
<% } else { %>
import { Resource } from './base.resource';
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable()
class <%= h.inflection.camelize(name) %>Resource extends Resource {
  protected resource: string = '<%= h.inflection.pluralize(h.inflection.camelize(name, true)) %>';

  public constructor(protected httpClient: HttpClient) {
    super(httpClient);
  }
}

export { <%= h.inflection.camelize(name) %>Resource };
<% } %>
