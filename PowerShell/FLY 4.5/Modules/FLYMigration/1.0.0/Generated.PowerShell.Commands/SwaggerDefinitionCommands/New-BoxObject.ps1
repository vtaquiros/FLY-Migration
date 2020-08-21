<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER Level
    

.PARAMETER Path
    

#>
function New-BoxObject
{
    param(    
        [Parameter(Mandatory = $false)]
        [ValidateSet('Folder')]
        [string]
        $Level,
    
        [Parameter(Mandatory = $false)]
        [string]
        $Path
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.BoxObject

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
