﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace AvePoint.Migration.Samples
{
    class GetExchangeMigrationPolicy : AbstractApplication
    {
        static void Main(string[] args)
        {
            new GetExchangeMigrationPolicy().RunAsync().Wait();
        }

        /// <returns>
        /// <see cref="AvePoint.Migration.Api.Models.ServiceResponseListPolicySummaryModel"/>
        /// </returns>
        protected override async Task<string> RunAsync(HttpClient client)
        {
            var response = await client.GetAsync("/api/exchange/policies");

            return await response.Content.ReadAsStringAsync();
        }
    }
}
