<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER Settings
    

.PARAMETER Mappings
    

#>
function New-GmailDistributionGroupPlanObject
{
    param(    
        [Parameter(Mandatory = $true)]
        [AvePoint.PowerShell.FLYMigration.Models.GmailDistributionGroupPlanSettingsModel]
        $Settings,
    
        [Parameter(Mandatory = $true)]
        [AvePoint.PowerShell.FLYMigration.Models.GmailDistributionGroupMappingModel]
        $Mappings
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.GmailDistributionGroupPlanModel

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
