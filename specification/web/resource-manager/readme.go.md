## Go

These settings apply only when `--go` is specified on the command line.

```yaml $(go) && !$(track2)
go:
  license-header: MICROSOFT_MIT_NO_VERSION
  namespace: web
  clear-output-folder: true
```

```yaml $(go) && $(track2)
license-header: MICROSOFT_MIT_NO_VERSION
module-name: sdk/resourcemanager/appservice/armappservice
module: github.com/Azure/azure-sdk-for-go/$(module-name)
output-folder: $(go-sdk-folder)/$(module-name)
azure-arm: true
directive:
  - rename-model:
      from: "Certificate"
      to: "AppCertificate"
  - rename-model:
      from: "CertificateCollection"
      to: "AppCertificateCollection"
  - rename-model:
      from: "CertificatePatchResource"
      to: "AppCertificatePatchResource"
```
