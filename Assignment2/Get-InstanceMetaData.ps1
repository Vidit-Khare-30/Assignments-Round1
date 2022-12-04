<#
Get-InstanceMetaData: This function is used to meta data for all azure instances within a tenant.
Input: N/A
Output: The Output returned is a Hashtable where filtering can be done easily on using tags/subtags to get the exact value for any property.
#>
 
Function Get-VMMetaData {
    Write-Host "Executing Resource Graph Query for getting Meta Data of Azure VM Instances"
    Import-Module Az.ResourceGraph -Verbose
    $VMDataQuery=@"
    resources
    | where type == 'microsoft.compute/virtualmachines'
"@
    $InstanceData = Search-AzGraph -Query $VMDataQuery -First 10
    Return $InstanceData
}
 
try{
 
    Write-Host "Calling VM MetaDataFunction"
    $VMData = Get-VMMetaData
 
    Write-Host "Retriving Data Based on Keys"
    $key = "properties"
    $VMData.$key
 
    Write-Host "Filtering Data Based on Values"
    $location = 'westeurope'
    $VMData | Where-Object {$_.location -like $location}
 
}
 
catch{
 
    Throw "Get-InstanceMetaData Failed with Error $_.Message"
 
}
