<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    Get jobs by plan ID

.DESCRIPTION
    Return a list of jobs of the plan

.PARAMETER PageNumber
    which page of jobs to query

.PARAMETER APIKey
    API key given by service owner.

.PARAMETER PageSize
    the number of jobs in one page

.PARAMETER Id
    ID of the plan

.PARAMETER BaseUri
    Serivce host for the api.

#>
function Find-IMAPPOP3JobsByPlan
{
    [OutputType([AvePoint.PowerShell.FLYMigration.Models.ServiceResponsePageResultViewModelListJobSummaryModel])]
    [CmdletBinding(DefaultParameterSetName='IMAPPOP3JobsByPlan_Find')]
    param(    
        [Parameter(Mandatory = $false, ParameterSetName = 'IMAPPOP3JobsByPlan_Find')]
        [System.Nullable`1[System.Int32]]
        $PageNumber = $null,
    
        [Parameter(Mandatory = $true)]
        [string]
        $APIKey,
    
        [Parameter(Mandatory = $false, ParameterSetName = 'IMAPPOP3JobsByPlan_Find')]
        [System.Nullable`1[System.Int32]]
        $PageSize = $null,
    
        [Parameter(Mandatory = $true, ParameterSetName = 'IMAPPOP3JobsByPlan_Find')]
        [System.String]
        $Id,
    
        [Parameter(Mandatory = $true)]
        [string]
        $BaseUri
    )

    Begin 
    {
	    Initialize-PSSwaggerDependencies
        $tracerObject = $null
        if (('continue' -eq $DebugPreference) -or ('inquire' -eq $DebugPreference)) {
            $oldDebugPreference = $global:DebugPreference
			$global:DebugPreference = "continue"
            $tracerObject = New-PSSwaggerClientTracing
            Register-PSSwaggerClientTracing -TracerObject $tracerObject
        }
	}

    Process {
    
    $ErrorActionPreference = 'Stop'

    $NewServiceClient_params = @{
        FullClientTypeName = 'AvePoint.PowerShell.FLYMigration.FLYAPI'
    }

    $NewServiceClient_params['AuthenticationCommand'] = @'
    param([string]$APIKey) Get-AutoRestCredential -APIKey $APIKey -Location 'header' -Name 'api_key'
'@  
    $NewServiceClient_params['AuthenticationCommandArgumentList'] = $APIKey 
    $NewServiceClient_params['HostOverrideCommand'] = @'
    param([string]$BaseUri) return New-Object -TypeName System.Uri -ArgumentList @($BaseUri)
'@ 
    $NewServiceClient_params['BaseUri'] = $BaseUri
    $FLYAPI = New-ServiceClient @NewServiceClient_params
    
    
    

    $skippedCount = 0
    $returnedCount = 0
    if ('IMAPPOP3JobsByPlan_Find' -eq $PsCmdlet.ParameterSetName) {
        Write-Verbose -Message 'Performing operation FindWithHttpMessagesAsync on $FLYAPI.'
        $taskResult = $FLYAPI.IMAPPOP3JobsByPlan.FindWithHttpMessagesAsync($Id, $PageNumber, $PageSize)
    } else {
        Write-Verbose -Message 'Failed to map parameter set to operation method.'
        throw 'Module failed to find operation to execute.'
    }

    if ($TaskResult) {
        $result = $null
        $ErrorActionPreference = 'Stop'
                    
        $null = $taskResult.AsyncWaitHandle.WaitOne()
                    
        Write-Debug -Message "$($taskResult | Out-String)"


        if((Get-Member -InputObject $taskResult -Name 'Result') -and
           $taskResult.Result -and
           (Get-Member -InputObject $taskResult.Result -Name 'Body') -and
           $taskResult.Result.Body)
        {
            Write-Verbose -Message 'Operation completed successfully.'
            $result = $taskResult.Result.Body
            Write-Debug -Message "$($result | Out-String)"
            $result
        }
        elseif($taskResult.IsFaulted)
        {
            Write-Verbose -Message 'Operation failed.'
            if ($taskResult.Exception)
            {
                if ((Get-Member -InputObject $taskResult.Exception -Name 'InnerExceptions') -and $taskResult.Exception.InnerExceptions)
                {
                    foreach ($ex in $taskResult.Exception.InnerExceptions)
                    {
                        Write-Error -Exception $ex
                    }
                } elseif ((Get-Member -InputObject $taskResult.Exception -Name 'InnerException') -and $taskResult.Exception.InnerException)
                {
                    Write-Error -Exception $taskResult.Exception.InnerException
                } else {
                    Write-Error -Exception $taskResult.Exception
                }
            }
        } 
        elseif ($taskResult.IsCanceled)
        {
            Write-Verbose -Message 'Operation got cancelled.'
            Throw 'Operation got cancelled.'
        }
        else
        {
            Write-Verbose -Message 'Operation completed successfully.'
        }
        
    }
    }

    End {
        if ($tracerObject) {
            $global:DebugPreference = $oldDebugPreference
            Unregister-PSSwaggerClientTracing -TracerObject $tracerObject
        }
    }
}
