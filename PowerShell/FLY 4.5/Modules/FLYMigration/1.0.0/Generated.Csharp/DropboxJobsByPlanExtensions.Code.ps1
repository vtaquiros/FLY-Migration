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
    /// Extension methods for DropboxJobsByPlan.
    /// </summary>
    public static partial class DropboxJobsByPlanExtensions
    {
            /// <summary>
            /// Get jobs by plan ID
            /// </summary>
            /// <remarks>
            /// Return a list of jobs of the plan
            /// </remarks>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='id'>
            /// ID of the plan
            /// </param>
            /// <param name='pageNumber'>
            /// which page of jobs to query
            /// </param>
            /// <param name='pageSize'>
            /// the number of jobs in one page
            /// </param>
            public static ServiceResponsePageResultViewModelListJobSummaryModel Find(this IDropboxJobsByPlan operations, string id, int? pageNumber = default(int?), int? pageSize = default(int?))
            {
                return operations.FindAsync(id, pageNumber, pageSize).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Get jobs by plan ID
            /// </summary>
            /// <remarks>
            /// Return a list of jobs of the plan
            /// </remarks>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='id'>
            /// ID of the plan
            /// </param>
            /// <param name='pageNumber'>
            /// which page of jobs to query
            /// </param>
            /// <param name='pageSize'>
            /// the number of jobs in one page
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<ServiceResponsePageResultViewModelListJobSummaryModel> FindAsync(this IDropboxJobsByPlan operations, string id, int? pageNumber = default(int?), int? pageSize = default(int?), CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.FindWithHttpMessagesAsync(id, pageNumber, pageSize, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

    }
}
