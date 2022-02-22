## Modularize Bicep IAC
Now you are ready to use this module. Navigate back to your Layer 1 repo. You will be able to replace the container registry resource with our module. Each module should validate its inputs so that your infra developers wouldn’t have to.

To make this solution maintainable, we want to have a flow for infrastructure developers to be able to update the images in our container registry. GitHub Actions can be used to build this flow. In the Layer 0 repo, create a GitHub Action ([Quickstart for GitHub Actions - GitHub Docs](https://docs.github.com/en/actions/quickstart)). When all is said and done, it should look like this bicep_module_ci.yaml

Now that we have a functional action, let’s add a new feature. We’ll add tags as an input object. Open the acr.bicep template and add a parameter to the top: 
 
```yaml 
param submitted_tags object = {} 
``` 
 
Then, add the tag primitive to your resource declaration: 
 
```yaml 
tags: submitted_tags 
``` 