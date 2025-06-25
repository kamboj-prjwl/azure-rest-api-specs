import "@typespec/http";
import "@typespec/rest";
import "@typespec/versioning";
import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";
import "./NginxDeployments.tsp";
import "./Certificates.tsp";
import "./Configurations.tsp";
import "./ApiKeys.tsp";
import "./WafPolicies.tsp";

using Http;
using Rest;
using Versioning;
using Azure.Core;
using Azure.ResourceManager;

/** Microsoft.Nginx.NginxPlus Resource Provider management API. */
#suppress "@azure-tools/typespec-azure-core/casing-style: The names of Namespace types must use PascalCase" "The casing style is defined by the Azure Resource Manager team."
@armProviderNamespace
@service(#{ title: "Microsoft.Nginx.NginxPlus management service" })
@versioned(Versions)
namespace NGINX.NGINXPLUS;

/** The available API versions. */
enum Versions {
  /** 2025-03-01-preview version */
  @useDependency(Azure.ResourceManager.Versions.v1_0_Preview_1)
  @useDependency(Azure.Core.Versions.v1_0_Preview_2)
  @armCommonTypesVersion(Azure.ResourceManager.CommonTypes.Versions.v5)
  v2025_03_01_preview: "2025-03-01-preview",
}

interface Operations extends Azure.ResourceManager.Operations {}
