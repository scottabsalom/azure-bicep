resource stg 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name:'stg001'
  location:resourceGroup().location
  kind:'StorageV2'
  sku: {
    name:'Standard_LRS'  
  }
}

output Id string = stg.id
