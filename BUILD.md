# Development

For development, I used local npm package mode. (`npm link` or `npm install /absolute/local/path/to/your/other/package`)

Then edit and prepare the project. Edit podspec file and project dependency with proprietary version.

Also you should edit package.json file to increment the version

# Publish

First you should login with:

```
npm login
```

And after logging in, you can publish new version npm by:

```
npm publish
```