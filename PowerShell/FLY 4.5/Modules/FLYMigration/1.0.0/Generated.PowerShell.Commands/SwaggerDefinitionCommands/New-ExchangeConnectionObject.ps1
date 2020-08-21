<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER OnPremisesConnectionOption
    

.PARAMETER OnlineConnectionOption
    

#>
function New-ExchangeConnectionObject
{
    param(    
        [Parameter(Mandatory = $false)]
        [AvePoint.PowerShell.FLYMigration.Models.ExchangeOnPremisesConnectionOption]
        $OnPremisesConnectionOption,
    
        [Parameter(Mandatory = $false)]
        [AvePoint.PowerShell.FLYMigration.Models.ExchangeOnlineConnectionOption]
        $OnlineConnectionOption
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.ExchangeConnectionModel

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
