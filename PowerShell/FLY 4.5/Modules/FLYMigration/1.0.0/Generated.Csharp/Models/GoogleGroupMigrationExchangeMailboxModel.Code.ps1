// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.PowerShell.FLYMigration.Models
{
    using Microsoft.Rest;
    using Newtonsoft.Json;
    using System.Linq;

    public partial class GoogleGroupMigrationExchangeMailboxModel
    {
        /// <summary>
        /// Initializes a new instance of the
        /// GoogleGroupMigrationExchangeMailboxModel class.
        /// </summary>
        public GoogleGroupMigrationExchangeMailboxModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the
        /// GoogleGroupMigrationExchangeMailboxModel class.
        /// </summary>
        /// <param name="mailboxType">Possible values include: 'GroupMailbox',
        /// 'DistributionGroup'</param>
        public GoogleGroupMigrationExchangeMailboxModel(string mailbox, string mailboxType)
        {
            Mailbox = mailbox;
            MailboxType = mailboxType;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "mailbox")]
        public string Mailbox { get; set; }

        /// <summary>
        /// Gets or sets possible values include: 'GroupMailbox',
        /// 'DistributionGroup'
        /// </summary>
        [JsonProperty(PropertyName = "mailboxType")]
        public string MailboxType { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (Mailbox == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Mailbox");
            }
            if (MailboxType == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "MailboxType");
            }
        }
    }
}
