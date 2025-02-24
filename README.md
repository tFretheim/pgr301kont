# StatusCake Monitoring Infrastructure

## Monitoring Configuration Choices

Our monitoring setup has been configured with the following considerations:

### Check Intervals and Thresholds
- **Check Interval**: 5 minutes (300 seconds)
  - Rationale: Provides good balance between timely detection and resource usage
  - Frequent enough to detect issues quickly
  - Not so frequent as to create unnecessary load

- **Confirmation Count**: 3 confirmations
  - Reduces false positives by requiring multiple failed checks
  - Helps avoid alert fatigue while maintaining reliability

- **Timeout Settings**: 20 seconds
  - Chosen based on typical web application response times
  - Long enough to account for slower connections
  - Short enough to detect significant performance issues

### HTTP Check Configuration
- **SSL Validation**: Enabled
  - Ensures SSL certificates are valid
  - Critical for security monitoring

- **Status Codes**: 200, 201, 301, 302
  - Includes both successful responses and valid redirects
  - Accommodates common web application patterns

### Contact Group Setup
- Email notifications for immediate awareness
- Optional integration with Slack/Teams for team visibility
- Multiple notification channels for redundancy
