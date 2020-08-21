<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER Contents
    

.PARAMETER SourceConnectionId
    

.PARAMETER DestinationConnectionId
    

#>
function New-Office365GroupMappingObject
{
    param(    
        [Parameter(Mandatory = $true)]
        [AvePoint.PowerShell.FLYMigration.Models.Office365GroupMappingContentModel[]]
        $Contents,
    
        [Parameter(Mandatory = $true)]
        [string]
        $SourceConnectionId,
    
        [Parameter(Mandatory = $true)]
        [string]
        $DestinationConnectionId
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.Office365GroupMappingModel

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
