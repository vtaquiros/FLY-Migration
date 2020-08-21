<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER PolicyId
    the id of migration policy

.PARAMETER MigrateVersions
    whether to migrate versions of source files in Google Drive

.PARAMETER Schedule
    the schedule for the migration

.PARAMETER NameLabel
    Large migration projects are often phased over several waves, each containing multiple plans. 
To easily generate migration reports for each project or wave, we recommend the Example name format Business Unit_Wave_Plan

.PARAMETER DatabaseId
    the id of migration database

.PARAMETER PlanGroups
    

#>
function New-GoogleDrivePlanSettingsObject
{
    param(    
        [Parameter(Mandatory = $false)]
        [string]
        $PolicyId,
    
        [Parameter(Mandatory = $false)]
        [switch]
        $MigrateVersions,
    
        [Parameter(Mandatory = $false)]
        [AvePoint.PowerShell.FLYMigration.Models.SimpleSchedule]
        $Schedule,
    
        [Parameter(Mandatory = $true)]
        [AvePoint.PowerShell.FLYMigration.Models.PlanNameLabel]
        $NameLabel,
    
        [Parameter(Mandatory = $false)]
        [string]
        $DatabaseId,
    
        [Parameter(Mandatory = $false)]
        [string[]]
        $PlanGroups
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.GoogleDrivePlanSettingsModel

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
