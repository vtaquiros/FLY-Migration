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

    public partial class ScheduleModel
    {
        /// <summary>
        /// Initializes a new instance of the ScheduleModel class.
        /// </summary>
        public ScheduleModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the ScheduleModel class.
        /// </summary>
        /// <param name="intervalType">Possible values include: 'OnlyOnce',
        /// 'Hourly', 'Daily', 'Weekly'</param>
        /// <param name="startTime">The start time to run the migration job.
        /// Note that the start time cannot be earlier than the current time.
        /// The time follows the W3C datetime format.
        /// Example:
        /// 2018-11-01T08:15:30-05:00 corresponds to November 1,2018,8:15:30
        /// am, US Eastern Standard Time,
        /// 2018-11-01T13:15:30Z corresponds the same instant and "Z" reprents
        /// time in UTC(Coordinated Universal Time)</param>
        /// <param name="interval">The interval of the schedule, if
        /// intervalType is not 'OnlyOnce', this field is required,</param>
        /// <param name="endType">Possible values include: 'NoEnd',
        /// 'Occurrences', 'Time'</param>
        /// <param name="occurrencesValue">Stop the recurrence after a
        /// specified number of occurrences,
        /// if schedule endType is 'Occurrences', this field is
        /// required,</param>
        /// <param name="endTime">The time to end the recurrence,
        /// If schedule endType is 'Time', this field is required.
        /// The time follows the W3C datetime format.
        /// Example:
        /// 2018-11-01T08:15:30-05:00 corresponds to November 1,2018,8:15:30
        /// am, US Eastern Standard Time,
        /// 2018-11-01T13:15:30Z corresponds the same instant and "Z" reprents
        /// time in UTC(Coordinated Universal Time)</param>
        public ScheduleModel(string intervalType, System.DateTime startTime, int? interval = default(int?), string endType = default(string), int? occurrencesValue = default(int?), System.DateTime? endTime = default(System.DateTime?))
        {
            IntervalType = intervalType;
            StartTime = startTime;
            Interval = interval;
            EndType = endType;
            OccurrencesValue = occurrencesValue;
            EndTime = endTime;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets possible values include: 'OnlyOnce', 'Hourly',
        /// 'Daily', 'Weekly'
        /// </summary>
        [JsonProperty(PropertyName = "intervalType")]
        public string IntervalType { get; set; }

        /// <summary>
        /// Gets or sets the start time to run the migration job. Note that the
        /// start time cannot be earlier than the current time.
        /// The time follows the W3C datetime format.
        /// Example:
        /// 2018-11-01T08:15:30-05:00 corresponds to November 1,2018,8:15:30
        /// am, US Eastern Standard Time,
        /// 2018-11-01T13:15:30Z corresponds the same instant and "Z" reprents
        /// time in UTC(Coordinated Universal Time)
        /// </summary>
        [JsonProperty(PropertyName = "startTime")]
        public System.DateTime StartTime { get; set; }

        /// <summary>
        /// Gets or sets the interval of the schedule, if intervalType is not
        /// 'OnlyOnce', this field is required,
        /// </summary>
        [JsonProperty(PropertyName = "interval")]
        public int? Interval { get; set; }

        /// <summary>
        /// Gets or sets possible values include: 'NoEnd', 'Occurrences',
        /// 'Time'
        /// </summary>
        [JsonProperty(PropertyName = "endType")]
        public string EndType { get; set; }

        /// <summary>
        /// Gets or sets stop the recurrence after a specified number of
        /// occurrences,
        /// if schedule endType is 'Occurrences', this field is required,
        /// </summary>
        [JsonProperty(PropertyName = "occurrencesValue")]
        public int? OccurrencesValue { get; set; }

        /// <summary>
        /// Gets or sets the time to end the recurrence,
        /// If schedule endType is 'Time', this field is required.
        /// The time follows the W3C datetime format.
        /// Example:
        /// 2018-11-01T08:15:30-05:00 corresponds to November 1,2018,8:15:30
        /// am, US Eastern Standard Time,
        /// 2018-11-01T13:15:30Z corresponds the same instant and "Z" reprents
        /// time in UTC(Coordinated Universal Time)
        /// </summary>
        [JsonProperty(PropertyName = "endTime")]
        public System.DateTime? EndTime { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (IntervalType == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "IntervalType");
            }
            if (Interval > 999)
            {
                throw new ValidationException(ValidationRules.InclusiveMaximum, "Interval", 999);
            }
            if (Interval < 1)
            {
                throw new ValidationException(ValidationRules.InclusiveMinimum, "Interval", 1);
            }
            if (OccurrencesValue > 999)
            {
                throw new ValidationException(ValidationRules.InclusiveMaximum, "OccurrencesValue", 999);
            }
            if (OccurrencesValue < 1)
            {
                throw new ValidationException(ValidationRules.InclusiveMinimum, "OccurrencesValue", 1);
            }
        }
    }
}
