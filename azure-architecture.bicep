resource serverFarm 'Microsoft.Web/serverfarms@2024-04-01' = {
  name: 'fakeCompanyPortal'
  location: 'eastus2'
  sku: {
    name: 'B1'
  }
}

resource website 'Microsoft.Web/sites@2024-04-01' = {
  name: 'fakeCompanyPortal-devops'
  location: 'eastus2'
  // now we declare a dependency, which takes an array of another resource
  properties: {
    serverFarmId: serverFarm.id
  }
}

resource websiteSettings 'Microsoft.Web/sites/config@2024-04-01' = {
  name: 'appsettings'
  parent: website
  properties: {
    enableAwesomeFeature: 'true'
  }
}
