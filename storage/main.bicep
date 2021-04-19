targetScope = 'subscription'

param storageAccName string = 'sra001'

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: 'rgstorage'
  location: 'UK South'
}

module modStorage 'storage.bicep' = {
  name:'modStorage'
  scope:rg
  params:{
    storageAccName:storageAccName
  }
}

output storageId string = modStorage.outputs.Id
