## Automate Infrastructure Deployment Using GitHub Actions

Now, you could of course just edit the module declaration and manually deploy your bicep changes, but as above, GitHub Actions can add a lot of power to our deployment process. To instrument this, navigate to your layer 1 repo and the infrastructure folder in there. First, update your bicep file with two pieces - an allowance for the new tags feature of our module (add an input param: tags), and make it so that it deploys at a subscription level (at the top of the file add `targetScope = 'subscription'` and add a parameter for resource group). When all is said and done, it should look something like l1_acr.bicep.

Create a github action in the layer 1 repo similar to bicep_deployment.yaml.
