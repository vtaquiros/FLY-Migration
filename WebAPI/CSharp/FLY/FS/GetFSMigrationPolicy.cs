﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace AvePoint.Migration.Samples
{
    /// <summary>
    /// Returns a list of migration policies
    /// </summary>
    class GetFSMigrationPolicy : AbstractApplication
    {
        static void Main(string[] args)
        {
            new GetFSMigrationPolicy().RunAsync().Wait();
        }

        /// <returns>
        /// <see cref="AvePoint.Migration.Api.Models.ServiceResponseListPolicySummaryModel"/>
        /// </returns>
        protected override async Task<string> RunAsync(HttpClient client)
        {
            var response = await client.GetAsync("/api/filesystem/policies");

            return await response.Content.ReadAsStringAsync();
        }
    }
}
