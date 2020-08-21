<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER StartTime
    Set the start time of the migration job.
The time follows the W3C datetime format. 
Example:
2018-11-01T08:15:30-05:00 corresponds to November 1,2018,8:15:30 am, US Eastern Standard Time, 
2018-11-01T13:15:30Z corresponds the same instant and "Z" reprents time in UTC(Coordinated Universal Time)

.PARAMETER MigrationType
    "Full" : Rerun a full migration job
"Incremental" : Rerun an incremental migration job

#>
function New-PSTFileJobExecutionObject
{
    param(    
        [Parameter(Mandatory = $false)]
        [string]
        $StartTime,
    
        [Parameter(Mandatory = $true)]
        [ValidateSet('Incremental', 'Full')]
        [string]
        $MigrationType
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.PSTFileJobExecutionModel

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
