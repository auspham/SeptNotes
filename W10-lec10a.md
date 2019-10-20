# Requirement Engineering

?> Requirement engineering process is <mark>the process of establishing the services that the customer requires from a system</mark> and <mark>the constraints</mark> under which it operates and is developed.

?> The requirements are the <mark>descriptions of the system services and constraints that are generated</mark> during the requirements engineering process.

**List of the requirement:**

- Functional and non-functional requirements 
- The software requirements document
- Specification requirements
- Requirements engineering process

**What is a requirement**

Statement of a service or of a system constraint

## Types of requirement

1.  **User requirements**
   - Statement/diagram in <u>natural language</u> of the **system’s functions**
   - In Agile it’s referred as *User Stories*

2. **System requirements**
   - A structured document with **detailed descriptions of system’s functions.**, services and operational **constraints**. 
3. **Non-functioanl requirements**
   - A constraint of operation of the system. Not what it does but **HOW** it does.
   - Example: efficiency, reliability, security, learnability,…

## Non-functional classifications

1. **Product requirements**
   - Requirements which specify that **the deliver product must behave in a particular way**
2. **Organisational requirements**
   - Requirements **regarding to organisational policies and procedures**
   - E.g: process standards used, implementation requirements, etc.

3. **External requirements**
   - Requirements which are external to the system and its development process
   - E.g: law stuff…

## Goals and requirements

!> Non-functional requirements may be very difficult to state precisely and imprecise requirements may be difficult to verify.

**Goal**: 

- A general intention of user: easy to use

**Verifiable non-functional requirement**:

- A statement using some measure that **can be objectively tested.**

>  Goals are helpful to developers as they can convey the intentions of the user.

## Usability requirements

**Example of good requirement:**

- The system should be easy to use by medical stuff and should be organized in such a way that user errors are minimized (Goal)
- Medical staff shall be able to use all the system functions after hour of training. After this training, the average number of errors made by experienced users shall not exceed two per hour of system use (Testable non-functional requirement)

### Measures for Requirements

Non-functional requirements **must have a clear measures** which **can be verified when the system in production**

Avoid generic statement about the system qualities such as:

- The system must be easy to use
  - *How easy, what is the measurement of ‘easy’*
- The system should be scalable
  - *For how many users*

Avoid generalisation that may be unlikely to met across the system such as:

- Response times will be below 5 seconds
  - *For what features? Can’t be for all features.*
- System availability will be 99.95%
  - *For what time of the day? Can’t be for the whole day.*

### Metrics for specifying nonfunctional requirements

| Property    | Measure                                                      |
| ----------- | ------------------------------------------------------------ |
| Speed       | Processed Transactions/ seconds<br />User/event response time<br />Screen refresh time |
| Size        | Bytes, Mbytes<br />Number of ROM chips                       |
| Ease of use | Training time<br />Number of help frames                     |
| Reliability | Mean time to failure<br />Probability of unavailability<br />Rate of failure occurrence<br />Availability |
| Robustness  | Time to restart after failure<br />Percentage of events causing failure<br />Probability of data corruption on failure |
| Portability | Percentage of target dependent statements<br />Number of target systems. |

## Domain requirements

The requirements for the system for working on specific domains

- For example, a train control has to work differently on different weather conditions

Domain requirements can be new functionalities, constraints on existing requirements or define specific computations

!> If domain requirements are not satisfied, the system may be unworkable

## Key points

Requirements for a software system **set out what the system should do and define constraints** on its operation and implementation

- **Functional requirements**: are **statements of the services that the system must provide**  or are descriptions of how some computations must carried out

- **Non-functional requirement**: often constrain the system being developed and the development process being used.

> **The requirements document** is NOT a design document. As far as possible, it **should say** **WHAT the system should do** rather than how it should do it.

<hr />

The requirements engineering process is an iterative (loop) process contains:

1. Requirement elicitation (identify)
   - Is an iterative process of:
     - Requirements discovery
     - Requirements classification and organization
     - Requirements negotiation
     - Requirements documentations
2. Specification
3. Validation

!> In Agile, particularly Scrum, **User Stories replace more traditional forms of (functional) requirements documents**



