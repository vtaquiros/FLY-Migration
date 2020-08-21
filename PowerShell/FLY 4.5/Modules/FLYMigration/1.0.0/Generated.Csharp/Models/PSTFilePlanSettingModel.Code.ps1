// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.PowerShell.FLYMigration.Models
{
    using Microsoft.Rest;
    using Newtonsoft.Json;
    using System.Collections;
    using System.Collections.Generic;
    using System.Linq;

    public partial class PSTFilePlanSettingModel
    {
        /// <summary>
        /// Initializes a new instance of the PSTFilePlanSettingModel class.
        /// </summary>
        public PSTFilePlanSettingModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the PSTFilePlanSettingModel class.
        /// </summary>
        /// <param name="nameLabel">Large migration projects are often phased
        /// over several waves, each containing multiple plans.
        /// To easily generate migration reports for each project or wave, we
        /// recommend the Example name format Business Unit_Wave_Plan</param>
        /// <param name="policyId">the id of migration policy</param>
        /// <param name="databaseId">the id of migration database</param>
        /// <param name="schedule">the schedule for the migration</param>
        public PSTFilePlanSettingModel(PlanNameLabel nameLabel, string policyId = default(string), string databaseId = default(string), SimpleSchedule schedule = default(SimpleSchedule), IList<string> planGroups = default(IList<string>))
        {
            NameLabel = nameLabel;
            PolicyId = policyId;
            DatabaseId = databaseId;
            Schedule = schedule;
            PlanGroups = planGroups;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets large migration projects are often phased over several
        /// waves, each containing multiple plans.
        /// To easily generate migration reports for each project or wave, we
        /// recommend the Example name format Business Unit_Wave_Plan
        /// </summary>
        [JsonProperty(PropertyName = "nameLabel")]
        public PlanNameLabel NameLabel { get; set; }

        /// <summary>
        /// Gets or sets the id of migration policy
        /// </summary>
        [JsonProperty(PropertyName = "policyId")]
        public string PolicyId { get; set; }

        /// <summary>
        /// Gets or sets the id of migration database
        /// </summary>
        [JsonProperty(PropertyName = "databaseId")]
        public string DatabaseId { get; set; }

        /// <summary>
        /// Gets or sets the schedule for the migration
        /// </summary>
        [JsonProperty(PropertyName = "schedule")]
        public SimpleSchedule Schedule { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "planGroups")]
        public IList<string> PlanGroups { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (NameLabel == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "NameLabel");
            }
            if (NameLabel != null)
            {
                NameLabel.Validate();
            }
            if (Schedule != null)
            {
                Schedule.Validate();
            }
        }
    }
}
