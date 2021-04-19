targetScope = 'subscription'

param rgName string = 'rgstorage'
param rgLocation string = 'UK South'
param storageAccName string = 'sra001'

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name:rgName
  location:rgLocation
}

module modStorage 'storage.bicep' = {
  name:'modStorage'
  scope:rg
  params:{
    storageAccName:storageAccName
  }
}

output storageId string = modStorage.outputs.Id
