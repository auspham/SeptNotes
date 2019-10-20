# Performance Testing

?> **Performance Testing** is to <mark>evaluate the system against required performance criteria</mark>, **comparing between different systems**/architectures to find which one performs best, **find the source of performance problem**



Using performance test we can find the throughput levels

- **Baselines**: compare the performance improvements against with your intial performance metric data

- **Benchmarks**: comparing your system agaisnt industry standards

## Why do performance testing

1. Compare system performance against that required for **end-user statisfaction**
2. Verify that the application **meets desired performance**
3. Analyze behaviour of the app at various load levels
4. **Identify bottle necks** (e.g memory leaks)
5. Determine capacity of app’s infrastructure and future resources that’s needed for a adequate performance
6. Compare different configurations to determine which works the best for the app and business.

## Risk Addressed

We test through all the risk to make sure that the system can handle.

### Speed related risk

- Is the application **fast enough to satisfy end-users**
- Can the app process data fast enough
- Is the app processing data so fast that it become corrupt
- Is the app capable of presenting most current information

**Risk-mitigation (reduce) strategies**

- <mark>Ensure that performance requirements represent needs of real user.</mark>
- Design workloads representing both normal and peak usage
- Conduct performance testing with data feeds representing operation as in production
  - *Example: In production, single data query may involve DB caching*
- Use performance tests to inform business and architecture decisions
- <mark>Include time-critical transactions in performance test</mark>
- **Conduct** some **performance** **test** **under real condition** (while other apps are running…)
- **Measure speeds under various conditions** / loads / scenarios.

### Scalability-related risks

- Does the app provicde **consistent and acceptable response for all users**

- Does the app hold all the data collected over the life of the app
- Will the app be secure under heavy usage
- Is the functionality compromise under heavy usage
- Can the appliocation handle unanticipated peak loads
- Can the app respond to DoS attack,..

**Risk-mitigation strategies**

- Make time for realistic endurance tests
- Conduct stress testing with key scenarios
- Conduct stress testing with **realistic data feeds**
- Take a server offline during the rests to see what happens
- Execute identical test, DoS attack, conduct security tests under various loads
- Include error/ exception cases in tests scenarios (e.g wrong login id)…

## Measuring performance

**Clear “metrics” are needed** to determined required or expected performance

- These are typically set by the cient or Business Analyst or System architect
- Metric must be precise, but **must acknowledge that they’re not 100% guarentee**, For example:
  - Response time: How long to response to a user requiest/input:
    - *Login request should return within 2 seconds 95% of the time.*
  - Throughput: How much data can be transferred within a unit of time
    - *Transaction processing should handle 10Mbytes / sec*

!> Metrics **should be chosen based on requirement for user statisfaction while being realistic** - higher performance requirements mean higer cost.