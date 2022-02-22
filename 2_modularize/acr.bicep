@minLength(5) 
@maxLength(50) 
@description('Name of the azure container registry (must be globally unique)') 
param acrName string 
 
@description('Enable an admin user that has push/pull permission to the registry.') 
param acrAdminUserEnabled bool = false 
 
@description('Location for all resources.') 
param location string = resourceGroup().location 
 
@allowed([ 
  'Basic' 
  'Standard' 
  'Premium' 
]) 
@description('Tier of your Azure Container Registry.') 
param acrSku string = 'Basic' 
 
module acr 'br:tjsiacdemoacr.azurecr.io/bicep/modules/acr:1.0.0' = { 
  name: 'acrDeployment' 
params: { 
acrSku: acrSku 
  acrName: acrName 
  acrAdminUserEnabled: acrAdminUserEnabled 
  location: location 
} 
} 
