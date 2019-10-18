# Design Patterns and Principles

## Design characteristic

| Name                       | Definition                                                   |
| -------------------------- | ------------------------------------------------------------ |
| **Coherence**              | **Logical structure**, elements **working together to form a whole** |
| **Cohesion**               | Functions **strongly related together**                      |
| **Consistency**            | Consistent                                                   |
| **Coupling**               | to **what extent do changes one affect the other**           |
| **Extensibility**          | will it be easy to extend?                                   |
| **Functional flexibility** | How **open is the system** to **supporting changes** to function |
| **Generality**             | Are mechanisms and **decisions as general as practicable?**  |
| **Inter dependency**       | **What proportion** of processing steps **involves interactions between elements?** (not within an element) |
| **Separation of concerns** | Are **internal elements responsible** **for distinct parts of system’s operation** |
| **Simplicity**             | Is the design solutions used the **simplest one?**           |



### Design smells

| name                | definition                                                   |
| ------------------- | ------------------------------------------------------------ |
| **Rigidity**        | The system is hard to change because **changes in one part will lead to change in other parts** (high coupling) |
| **Fragility**       | The system may **break in in multiple places** due to change in one place |
| **Immobility**      | Parts **could be useful in other systems**, but separating has high risk. |
| **Viscosity**       | Doing things right **is harder** than doing things wrong: <br />- **Design-preserving methods are more difficult to use** than the hack.<br />- **Development environment is slow and inefficient** |
| Needless complexity | **contains element** that **aren’t currently useful**        |
| Needless repetition | System has lots of repeated code elements                    |
| Opacity             | System or parts is **hard to read and understand**           |

### Desirable Design Characteristics

… refer to [W8-lec6a](W8-lec6a.md)

### Solid principle

… refer to [W8-lec6a](W8-lec6a.md)



## Design Patterns

### Benefits

1. Support reuse
2. Communicate successful designs
3. Narrow design space
4. Focus on design what have been **proven to work**
5. promote good practice
6. leverage and build on best practice and expertise.

### Essentials Elements of Design patterns

1. Pattern name: increase vocabulary of designers
2. Problem / Motivation: intent, context, when to apply
3. Solution: UML-like structure, abstract code
4. Consequences: results and tradeoffs.



## Observer pattern

> Need to maintain consistency between related objects without coupling them tightly.
>
> E.g: When you want to update multiple views when the data changes.

Example (Change the charts based on data)

![1571406244503](W9-lec9b.assets/1571406244503.png)



### Solution

The data can have any number of registered `Observers`. All `observers` are notified when the data’s state changed.

`Observers` can also query the data’s current state.

### Applicability

Apply when:

- you want one element to depend on the others
- a change to one object requires a change to the others
- when you don’t want to be tightly coupled

