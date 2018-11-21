// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.Migration.Api.Models
{
    using Microsoft.Rest;
    using Newtonsoft.Json;
    using System.Collections;
    using System.Collections.Generic;
    using System.Linq;

    public partial class SharePointMappingModel
    {
        /// <summary>
        /// Initializes a new instance of the SharePointMappingModel class.
        /// </summary>
        public SharePointMappingModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the SharePointMappingModel class.
        /// </summary>
        /// <param
        /// name="sourceAccount">{AvePoint.Migration.Api.Models.AccountModel}</param>
        /// <param
        /// name="destinationAccount">{AvePoint.Migration.Api.Models.AccountModel}</param>
        public SharePointMappingModel(AccountModel sourceAccount, AccountModel destinationAccount, IList<SharePointMappingContent> contents)
        {
            SourceAccount = sourceAccount;
            DestinationAccount = destinationAccount;
            Contents = contents;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets {AvePoint.Migration.Api.Models.AccountModel}
        /// </summary>
        [JsonProperty(PropertyName = "sourceAccount")]
        public AccountModel SourceAccount { get; set; }

        /// <summary>
        /// Gets or sets {AvePoint.Migration.Api.Models.AccountModel}
        /// </summary>
        [JsonProperty(PropertyName = "destinationAccount")]
        public AccountModel DestinationAccount { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "contents")]
        public IList<SharePointMappingContent> Contents { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (SourceAccount == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "SourceAccount");
            }
            if (DestinationAccount == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "DestinationAccount");
            }
            if (Contents == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Contents");
            }
            if (SourceAccount != null)
            {
                SourceAccount.Validate();
            }
            if (DestinationAccount != null)
            {
                DestinationAccount.Validate();
            }
            if (Contents != null)
            {
                foreach (var element in Contents)
                {
                    if (element != null)
                    {
                        element.Validate();
                    }
                }
            }
        }
    }
}
