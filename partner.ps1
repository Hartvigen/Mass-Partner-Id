Connect-AzAccount

$tenantIds = (Get-AzTenant).TenantId

#Iterate the connection between each tenant id and set the Partner Id as specified
foreach($tenantId in $tenantIds)
{
    Connect-AzAccount -TenantId  $tenantId
    new-AzManagementPartner -PartnerId 527351
}
