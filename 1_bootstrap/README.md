## Bootstrapping Bicep IAC

First things first, for bicep modules we want to have an Azure Container registry. In Layer 1/infrastructure, create a new file called acr.bicep. Copy the contents from the corresponding file in this directory.

Save the file, then create the registry by deploying our code: `az deployment group create --name deployment1 --resource-group rg-iac-demo --templatefile acr.bicep --parameters @acr.parameters.json` 

Next, copy the file that we created above to create our container registry to the Layer 0 repository, into infrastructure_templates/bicep. Then, we will push that file to the Azure Container registry: `az bicep publish --file acr.bicep --target br:exampleregistry.azurecr.io/bicep/modules/acr:1.0.0`  

