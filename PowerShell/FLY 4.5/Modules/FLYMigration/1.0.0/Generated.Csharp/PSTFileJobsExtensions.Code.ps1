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
    /// Extension methods for PSTFileJobs.
    /// </summary>
    public static partial class PSTFileJobsExtensions
    {
            /// <summary>
            /// Get jobs
            /// </summary>
            /// <remarks>
            /// Returns a list of jobs
            /// </remarks>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='pageNumber'>
            /// Optional, which page of jobs to query
            /// </param>
            /// <param name='pageSize'>
            /// Optional, the amount of jobs to query
            /// </param>
            public static ServiceResponsePageResultViewModelListJobSummaryModel Get(this IPSTFileJobs operations, int? pageNumber = default(int?), int? pageSize = default(int?))
            {
                return operations.GetAsync(pageNumber, pageSize).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Get jobs
            /// </summary>
            /// <remarks>
            /// Returns a list of jobs
            /// </remarks>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='pageNumber'>
            /// Optional, which page of jobs to query
            /// </param>
            /// <param name='pageSize'>
            /// Optional, the amount of jobs to query
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<ServiceResponsePageResultViewModelListJobSummaryModel> GetAsync(this IPSTFileJobs operations, int? pageNumber = default(int?), int? pageSize = default(int?), CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.GetWithHttpMessagesAsync(pageNumber, pageSize, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

    }
}
