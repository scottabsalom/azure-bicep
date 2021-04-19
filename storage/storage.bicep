param storageAccName string
param storageKind string = 'StorageV2'
param storageSku string = 'Standard_LRS'

resource stg 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name:storageAccName
  location:resourceGroup().location
  kind:storageKind
  sku: {
    name:storageSku  
  }
}

output Id string = stg.id
