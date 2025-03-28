resource serverFarm 'Microsoft.Web/serverfarms@2024-04-01' = {
  name: 'fakeCompanyPortal'
  location: 'eastus2'
  sku: {
    name: 'B1'
  }
}
