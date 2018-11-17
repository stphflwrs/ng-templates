# Angular Templates
Angular CLI compatible `hygen` templates I use frequently.

Customized to my workflow so general use isn't supported yet.

## Usage
These steps are to be done in your own Angular CLI project

Install `hygen`
```bash
npm install --save-dev hygen
```

Put these files in the `_templates` directory for your project and refer to commands in the *Reference* section. It is recommended to alias these in your `package.json` scripts.

## Reference
### Faker
```bash
hygen faker new:.* --name [NAME]     # Create a faker with [NAME]
```
Creates faker as `src/app/services/fakers/[NAME].faker.ts` along with spec file `src/app/services/fakers/[NAME].faker.spec.ts`

### Guard
```bash
hygen guard new:.* --name [NAME]     # Create a guard with [NAME]
```
Creates guard as `src/app/services/guards/[NAME].guard.ts` along with spec file `src/app/services/guards/[NAME].guard.spec.ts`

### Page
```bash
hygen page new:.* --name [NAME]      # Create a page with [NAME]
```
Creates a page in `src/app/pages/[PATH]/[NAME]/` with the following files
* `[NAME].page.html` - Template
* `[NAME].page.scss` - Styling
* `[NAME].page.ts` - Display logic
* `[NAME].page.spec.ts` - Test display logic
* `[NAME].page.service.ts` - Data retrieval logic
* `[NAME].page.service.spec.ts` - Test data retrieval logic
* `[NAME].page.module.ts` - Module exporting only page

### Redirect
```bash
hygen redirect new:.* --name [NAME]  # Create a redirect with [NAME]
```
Creates redirect as `src/app/services/redirects/[NAME].redirect.ts` along with spec file `src/app/services/redirects/[NAME].redirect.spec.ts`

### Resource
```bash
hygen resource new:.* --name [NAME]  # Create a resource with [NAME]
```
Creates resource as `src/app/resources/[NAME].resource.ts` along with spec file `src/app/resources/[NAME].resource.spec.ts`

Choice between regular resource and base resource, both require base resource (coming soon)

### Service
```bash
hygen service new:.* --name [NAME]  # Create a service with [NAME]
```
Creates service as `src/app/services/[PATH]/[NAME].service.ts` along with spec file `src/app/services/[PATH]/[NAME].service.spec.ts`

Customize paths in `service/new/prompt.js`

## Todo
* Add initialize steps for `Resource` to add `base.resource.ts` and `base-crud.resource.ts`
* Consider adding inline generator that edits available paths for types `Page` and `Service`
