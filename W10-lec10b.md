# Performance Testing

?> **Performance Testing** is to <mark>evaluate the system against required performance criteria</mark>, **comparing between different systems**/architectures to find which one performs best, **find the source of performance problem**



Using performance test we can find the throughput levels

- **Baselines**: compare the performance improvements against with your intial performance metric data

- **Benchmarks**: comparing your system agaisnt industry standards

## Why do performance testing

1. Compare system performance against that required for **end-user satisfaction**
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
- Does the app provide **consistent and acceptable response for all users**
- Does the app hold all the data collected over the life of the app
- Will the app be secure under heavy usage
- Is the functionality compromise under heavy usage
- Can the application handle unanticipated peak loads
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
- Metric must be precise, but **must acknowledge that they’re not 100% guarantee**, For example:
  - Response time: How long to response to a user request/input:
    - *Login request should return within 2 seconds 95% of the time.*
  - Throughput: How much data can be transferred within a unit of time
    - *Transaction processing should handle 10Mbytes / sec*

!> Metrics **should be chosen based on requirement for user satisfaction while being realistic** - higher performance requirements mean higher cost.

## Varying requests and transmitted data

When doing performance test it is **important to have realistic data feeds,** e.g., types of requests and data sent need to be varied and preferably match expected actual distribution

Otherwise we may see unrealistic cache effects, i.e fast response time from caching previous results that won’t happen under real use

- We can do this by mock data-generation or use a database of requests with random data

## Types of performance test

| Types                     | Description                                                  |
| ------------------------- | ------------------------------------------------------------ |
| **Capacity planning**     | Provide actual data to capacity planners<br />Determines current usage and capacity |
| **Component testing**     | Provides information to tune the component-level performance |
| **Endurance testing**     | Detects slow memory leaks / insufficient storage capacity,…  |
| **Investigative testing** | Collects useful information at various development stages    |
| **Load testing**          | Determines throughput at expected loads.<br />Also used to gather statistics at various loads |
| **Smoke testing**         | Quick assessment of current performance<br />Quickly finds obvious performance issues |
| **Spike testing**         | Detects memory leaks / disk I/O problems <br />Identifies problems with returning to steady state |
| **Stress testing**        | Determines behaviour at overstressed levels<br />Estimates extremes of system capabilities |

## Steps for performance testing

### 1. Identify testing environment

> What is data? What are the system components? What is the configuration
>
> The environment for testing is normally on isolated network to factor out external effects.

- **Identify** user-facing functionality (**use cases**)
- Determine expected user activity
- **Develop** an exact model of both **test** and **production architectures**
  - Develop  a reasonable model of actual user environments
- Identify other process/systems using the architecture
- List some of the considerations
  - e.g. Switching IP for multiple IP request,…

### 2. Performance Acceptance Criteria

> Some of the business performance metrics.

- Capture/**estimate** resource **usage targets/threshold**

  *Go ask around and do research*

  - Ask architects
  - Find out industry standards
  - Work with key performance indicators and business metrics to better understand the current situation and further growth
  - Customers will have metrics related to operation/business needs

- Capture/**estimate** resource **budgets/allocations**

  - Costs of memory, servers, etc

- Identify metrics

  *Find some of the max load stuff, average response time*

  - E.g. response time, through put, maximum user load
  - Resource utilisation
  - Business related metrics

- Stay on top of changing objectives, targets, budgets, plan

### 3. Plan and Design Tests

1. **Identify objectives**

2. Identify **key usage scenarios**

3. Determine **navigation paths for key scenarios**

4. Determine **individual user data and variances**

   *Can be obtained from web logs (user sessions per hour, page views/minute),…*

5. Determine relative **distribution** of **scenarios**

6. Identify **target load levels**

7. Prepare to **implement model**

!> The above steps are also part of the **workload analysis**

### 4. Execute Tests

- **Validate test environment**

  - Make it as realistic as possible. e.g. turn off virus checking but retain normal background process.

- **Validate test**

  - **Smoke test with single user**, observe behaviour for anything unusual.

  - Make sure **test result and metrics represent what you intend**

  - At the end, **check that database has been updated correctly**

    *if not, it will not correctly reflect database performance*
    
  - Should **clean database between tests**
  
  - Run tests in **variety of combination and sequences**

- **Run tests**
  - **Reset system before running** a formal test
  - Execute **every test at least twice**
  - Use clients machines that are not overly stressed

### 5. Analyze result and Report

- **High-level questions to be answered by the reports**

  - Is the performance getting better/worse
  - Have we met the requirements?
  - Is it ready to ship
- **Frequently-reported performance data**

  - End-user response time
  - Component response time
  - Volumes, capacities and rates
  - Resource utilisations
  - Trends
    - *What happens as we change the number of users, frequency of request, etc*
- <u>**Key components of technical report**</u> 

  1. Results graph
  2. Table of single instance measurement (e.g. max throughput)
  3. Workload model
  4. Test environment
  5. Description of observations, concerns, requests for collaboration


# Some basic stat concepts

!> Might not be in the exam but good to know for yourself

| Name                     | Definition                                                   |
| ------------------------ | ------------------------------------------------------------ |
| **Average**              | Mean                                                         |
| **Percentile**           | **What percentage of measurements must meet some criterion.** Example: “95th percentile at 6 sec” means 95% of requests must be handled inside 6 sec. |
| **Median**               | The **middle** **value** of data set                         |
| **Standard deviation**   | Measures **how much data points vary from the average.** Low Standard Deviation means the measurements is more reliable |
| **Uniform distribution** | A distribution of data points where **every value between min and max is evenly presented** |
| **Normal distribution**  | Bell curve where points are more likely to be clustered near average. |

# Conclusion

?> **Workload Analysis** to determine expected use patterns. It helps us to determine **where** to gather performance statistics

?> Performance, Load and Stress testing  is to **understand behaviour of the system** at normal, increasing and overloaded loads

?> Test metrics used to indicate performance requirements