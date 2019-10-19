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

| name                    | definition                                                   |
| ----------------------- | ------------------------------------------------------------ |
| **Rigidity**            | The system is hard to change because **changes in one part will lead to change in other parts** (high coupling) |
| **Fragility**           | The system may **break in in multiple places** due to change in one place |
| **Immobility**          | Parts **could be useful in other systems**, but separating has high risk. |
| **Viscosity**           | Doing things right **is harder** than doing things wrong: <br />- **Design-preserving methods are more difficult to use** than the hack.<br />- **Development environment is slow and inefficient** |
| **Needless complexity** | **contains element** that **aren’t currently useful**        |
| **Needless repetition** | System has lots of repeated code elements                    |
| **Opacity**             | System or parts is **hard to read and understand**           |

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

### Participants

> Some of the terms for observer

| Name                 | Function                                                     |
| -------------------- | ------------------------------------------------------------ |
| **Subject**          | knows the `observer`, provides an interface for attaching (add) and  detaching (remove) `observer `object. e.g: data. |
| **Observer**         | defines an updating interface for objects that need to be notified of changes. |
| **ConcreteSubject**  | Store the state of interest to `ConcreteObserver` objects. Sends notification to its observers when state changes. |
| **ConcreteObserver** | Maintains a reference to `ConcreateSubject` object. **Store states that should stay consistent with subjects**. Implement `Observer` updating interface |

### Structure

![1571444953204](W9-lec9b.assets/1571444953204.png)

> Observers doesn’t know anything about the others, they just knows when to update themselves
>
> Attach will add the `Observer` to the `Array`. Detach will pop it out.
>
> `Observer` is an interface.

### Sample Code (not asked to do)

This code uses `java.util.Observer/Observable`

ConcreteSubject:

```java
public class WeatherStation extends Observable {
    ...
    public void setState(Integer temp) {
        this.state = state;
        setChanged();
        notifyObservers(getState());
    }
}
```

Observer:

```java
public class WeatherConverter implements Observer {
    public void update(Observable subject, Object state) {
        System.out.println("Temperature in F" + celsiusToF(state));
    }
}
```

Test Program:

```java
Subject subject = new Subject();
subject.addObserver(new WeatherConverter());
subject.addObserver(new WeatherIntepreter());
subject.setState(28);
...
subject.setState(10);
```

### Consequences

1. Abstract coupling between Subject and Observers
2. Support for broadcast communication
3. Unexpected updates

### Implementation

1. Mapping subjects to their observers; how to store
2. Observing more than one subject
3. Who triggers: `Subject` or `Observer`
4. Dangling references[^1] to deleted subjects
5. Ensuring subject state is self-consistent before notification
6. Avoiding observer-specific updates: push vs pull
7. Specifying updates of specific interest

[^1]: A **dangling reference** is a **reference** to an object that no longer exists. Garbage is an object that cannot be reached through a **reference**. **Dangling references** do not exist in garbage collected languages because objects are only reclaimed when they are no longer accessible (only garbage is collected).

## Types of patterns

| Creational       | Structural       | Behavioural             |
| ---------------- | ---------------- | ----------------------- |
| Abstract Factory | Adapter (object) | Chain of responsibility |
| Builder          | Bridge           | Command                 |
| Prototype        | Composite        | Iterator                |
| Singleton        | Decorator        | Mediator                |
| Factory Method   | Facade           | Memento                 |
|                  | Flyweight        | Observer                |
|                  | Proxy            | State                   |
|                  |                  | Strategy                |
|                  |                  | Visitor                 |

### Creational patterns

##### Singleton

The entire class only has one instance, with a global point of access

##### Abstract factory

Gives an `interface` for creating families of dependent objects

##### Builder

**Separate the construction of a complex object from its representation** so that **the same construction can create different representations.**

##### Factory Method

It defines an interface for creating an object. **but let subclasses decide which class to instantiate**

##### Prototype

Create a prototypical instance from an object, and create new object by copying this prototype.

### Structural Patterns

##### Adapter

Convert the **interface** of a class **into another interface** clients expected

##### Bridge

Decouple an abstraction from its implementation so that the two can vary independently

##### Composite

Compose objects into tree structures to represent whole-part hierarchies. This patterns lets clients treat individual objects & object compositions[^2] uniformly.

[^2]: Object composition is a way to combine objects or data types into more complex ones.

##### Decorator

Attach additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.

##### Facade

Provide a unified interface to a set of interfaces in a subsystem. **Defines a higher-level interface that makes the subsystem easier to use.**

##### Flyweight

Use sharing to support large numbers of fine-grained objects[^3] efficiently

[^3]: More objects each holding less data

##### Proxy

Provide a placeholder for another object to control access to it

### Behavioral Patterns

