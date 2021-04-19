targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: 'rgstorage'
  location: 'UK South'
}

module modStorage 'storage.bicep' = {
  name:'modStorage'
  scope:rg
}

output storageId string = modStorage.outputs.Id
