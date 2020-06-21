# Tag-based Deployment

This repository it's a basic example of the tag-based deployment for monorepos using a selector script an Github Actions for deployments.

## DEMO

In order to run a demo for the tag-based deployment you just have to go to one of the packages and edit the package.json by increasing or decreasing the version number.

Commit the changes and push it

This will run the selector workflow in Github Actions and trigger the deployment workflow from the package that has changed in the commit

The tags can be reviewd under the [tags](https://github.com/llamojha/tag-based-deployment/tags) section

The workflows running for each commit will also show on the [commits](https://github.com/llamojha/tag-based-deployment/commits/master) section