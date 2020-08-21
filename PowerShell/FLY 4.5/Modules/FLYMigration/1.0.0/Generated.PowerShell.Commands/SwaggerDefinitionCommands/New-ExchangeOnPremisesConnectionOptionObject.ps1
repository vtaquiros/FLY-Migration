<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER ConnectionId
    

.PARAMETER BasicCredential
    The Exchange on-premises service account must have a mailbox and the following roles:
ApplicationImpersonation,
Exchange Servers,
Mail Recipients,
Mail Recipient Creation,
Distribution Groups,
Mailbox Search,
Active Directory,
To migrate source public folders, 
make sure a root folder with the same name exists in the destination and the service account has the Owner permission level to the root folder.

.PARAMETER ExchangeServerOption
    

#>
function New-ExchangeOnPremisesConnectionOptionObject
{
    param(    
        [Parameter(Mandatory = $false)]
        [string]
        $ConnectionId,
    
        [Parameter(Mandatory = $false)]
        [AvePoint.PowerShell.FLYMigration.Models.BasicCredential]
        $BasicCredential,
    
        [Parameter(Mandatory = $false)]
        [AvePoint.PowerShell.FLYMigration.Models.ExchangeServerOption]
        $ExchangeServerOption
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.ExchangeOnPremisesConnectionOption

    $PSBoundParameters.GetEnumerator() | ForEach-Object { 
        if(Get-Member -InputObject $Object -Name $_.Key -MemberType Property)
        {
            $Object.$($_.Key) = $_.Value
        }
    }

    if(Get-Member -InputObject $Object -Name Validate -MemberType Method)
    {
        $Object.Validate()
    }

    return $Object
}
