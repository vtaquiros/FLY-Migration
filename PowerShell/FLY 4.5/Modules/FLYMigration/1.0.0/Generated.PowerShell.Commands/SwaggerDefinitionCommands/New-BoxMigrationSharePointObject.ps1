<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER Level
    

.PARAMETER Url
    

#>
function New-BoxMigrationSharePointObject
{
    param(    
        [Parameter(Mandatory = $true)]
        [ValidateSet('Library', 'Folder')]
        [string]
        $Level,
    
        [Parameter(Mandatory = $true)]
        [string]
        $Url
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.BoxMigrationSharePointObject

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
