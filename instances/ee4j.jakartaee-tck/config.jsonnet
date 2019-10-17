{
  project+: {
    fullName: "ee4j.jakartaee-tck",
    shortName: "jakartaee-tck",
    displayName: "Eclipse Jakarta EE TCK",
    sponsorshipLevel: "SP1"
  },
  jenkins+: {
    maxConcurrency: 25,
    "agentConnectionTimeout": 300
  },
  "kubernetes": {
    "master": {
      "namespace": "{{project.shortName}}",
      "stsName": "{{project.shortName}}",
      "resources": {
        "cpu": {
          "request": "4000m",
          "limit": "8000m"
        },
        "memory": {
          "limit": "16384Mi"
        }
      }
    }
  }
}
