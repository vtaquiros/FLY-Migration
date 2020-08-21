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

    public partial class ExchangePlanSettingsModel
    {
        /// <summary>
        /// Initializes a new instance of the ExchangePlanSettingsModel class.
        /// </summary>
        public ExchangePlanSettingsModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the ExchangePlanSettingsModel class.
        /// </summary>
        /// <param name="nameLabel">Large migration projects are often phased
        /// over several waves, each containing multiple plans.
        /// To easily generate migration reports for each project or wave, we
        /// recommend the Example name format Business Unit_Wave_Plan</param>
        /// <param name="synchronizeDeletion">whether to delete the destination
        /// migrated e-mails that have been deleted from the source</param>
        /// <param name="migrateMailboxPermissions">whether to migrate
        /// permissions of the source mailbox</param>
        /// <param name="migrateDistributionGroups">whether to migrate
        /// distribution groups in the source mailbox</param>
        /// <param name="migratePublicFolders">whether to migrate public
        /// folders in the source mailbox</param>
        /// <param name="migrateContacts">whether to migrate contacts in the
        /// source mailbox</param>
        /// <param name="migrateMailboxRules">whether to migrate source mailbox
        /// rules</param>
        /// <param name="migrateAutoCompleteList">whether to migrate
        /// Auto-Complete List,
        /// The Auto-Complete List is a list of names and email addresses that
        /// can be suggested when the mailbox user configures users in the To,
        /// Cc, and Bcc lines.
        /// The suggestions are from the email messages that the mailbox user
        /// have sent before</param>
        /// <param name="policyId">the id of migration policy</param>
        /// <param name="databaseId">the id of migration database</param>
        /// <param name="schedule">the schedule for the migration</param>
        public ExchangePlanSettingsModel(PlanNameLabel nameLabel, bool? synchronizeDeletion = default(bool?), bool? migrateMailboxPermissions = default(bool?), bool? migrateDistributionGroups = default(bool?), bool? migratePublicFolders = default(bool?), bool? migrateContacts = default(bool?), bool? migrateMailboxRules = default(bool?), bool? migrateAutoCompleteList = default(bool?), string policyId = default(string), string databaseId = default(string), SimpleSchedule schedule = default(SimpleSchedule), IList<string> planGroups = default(IList<string>))
        {
            SynchronizeDeletion = synchronizeDeletion;
            MigrateMailboxPermissions = migrateMailboxPermissions;
            MigrateDistributionGroups = migrateDistributionGroups;
            MigratePublicFolders = migratePublicFolders;
            MigrateContacts = migrateContacts;
            MigrateMailboxRules = migrateMailboxRules;
            MigrateAutoCompleteList = migrateAutoCompleteList;
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
        /// Gets or sets whether to delete the destination migrated e-mails
        /// that have been deleted from the source
        /// </summary>
        [JsonProperty(PropertyName = "synchronizeDeletion")]
        public bool? SynchronizeDeletion { get; set; }

        /// <summary>
        /// Gets or sets whether to migrate permissions of the source mailbox
        /// </summary>
        [JsonProperty(PropertyName = "migrateMailboxPermissions")]
        public bool? MigrateMailboxPermissions { get; set; }

        /// <summary>
        /// Gets or sets whether to migrate distribution groups in the source
        /// mailbox
        /// </summary>
        [JsonProperty(PropertyName = "migrateDistributionGroups")]
        public bool? MigrateDistributionGroups { get; set; }

        /// <summary>
        /// Gets or sets whether to migrate public folders in the source
        /// mailbox
        /// </summary>
        [JsonProperty(PropertyName = "migratePublicFolders")]
        public bool? MigratePublicFolders { get; set; }

        /// <summary>
        /// Gets or sets whether to migrate contacts in the source mailbox
        /// </summary>
        [JsonProperty(PropertyName = "migrateContacts")]
        public bool? MigrateContacts { get; set; }

        /// <summary>
        /// Gets or sets whether to migrate source mailbox rules
        /// </summary>
        [JsonProperty(PropertyName = "migrateMailboxRules")]
        public bool? MigrateMailboxRules { get; set; }

        /// <summary>
        /// Gets or sets whether to migrate Auto-Complete List,
        /// The Auto-Complete List is a list of names and email addresses that
        /// can be suggested when the mailbox user configures users in the To,
        /// Cc, and Bcc lines.
        /// The suggestions are from the email messages that the mailbox user
        /// have sent before
        /// </summary>
        [JsonProperty(PropertyName = "migrateAutoCompleteList")]
        public bool? MigrateAutoCompleteList { get; set; }

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
