// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.PowerShell.FLYMigration
{
    using Models;
    using System.Threading;
    using System.Threading.Tasks;

    /// <summary>
    /// Extension methods for MicrosoftTeamsJob.
    /// </summary>
    public static partial class MicrosoftTeamsJobExtensions
    {
            /// <summary>
            /// Rerun the ID of the plan
            /// </summary>
            /// <remarks>
            /// Rerun a migration job by the job ID. It allows to configure the migration
            /// type and set the job start time.
            /// </remarks>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='id'>
            /// The ID of the job to be rerun
            /// </param>
            /// <param name='settings'>
            /// Settings to rerun the job
            /// </param>
            public static ServiceResponseString Restart(this IMicrosoftTeamsJob operations, string id, MSTeamsJobExecutionModel settings)
            {
                return operations.RestartAsync(id, settings).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Rerun the ID of the plan
            /// </summary>
            /// <remarks>
            /// Rerun a migration job by the job ID. It allows to configure the migration
            /// type and set the job start time.
            /// </remarks>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='id'>
            /// The ID of the job to be rerun
            /// </param>
            /// <param name='settings'>
            /// Settings to rerun the job
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<ServiceResponseString> RestartAsync(this IMicrosoftTeamsJob operations, string id, MSTeamsJobExecutionModel settings, CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.RestartWithHttpMessagesAsync(id, settings, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

            /// <summary>
            /// Delete a migration job
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='id'>
            /// The Id of the job that needs to be deleted
            /// </param>
            public static ServiceResponseStatusResultModel Remove(this IMicrosoftTeamsJob operations, string id)
            {
                return operations.RemoveAsync(id).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Delete a migration job
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='id'>
            /// The Id of the job that needs to be deleted
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<ServiceResponseStatusResultModel> RemoveAsync(this IMicrosoftTeamsJob operations, string id, CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.RemoveWithHttpMessagesAsync(id, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

            /// <summary>
            /// Stop a migration job
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='id'>
            /// The Id of the job that needs to be stopped
            /// </param>
            public static ServiceResponseStatusResultModel Stop(this IMicrosoftTeamsJob operations, string id)
            {
                return operations.StopAsync(id).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Stop a migration job
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='id'>
            /// The Id of the job that needs to be stopped
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<ServiceResponseStatusResultModel> StopAsync(this IMicrosoftTeamsJob operations, string id, CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.StopWithHttpMessagesAsync(id, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

    }
}
