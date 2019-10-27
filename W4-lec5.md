# Defect Prevention and Extraction

---

## Overview

**Defect prevention**

- Unit testing
  - Assertions
  - Writing & running unit tests with JUnit
- Defect removal
  - Logging
  - Debugging

---

## Unit Testing

> Validation activity performed during the construction phase.
>
> Isolate pieces of software to test

Use debugging tools to test the code, might involve the programmer who wrote the code. 

### Benefit

- Catches errors before later development phases
- Facilitates refactoring of code at a time later.
- Builds regression test suite
- Provides documentation at the test level
- Integrated with development.

### Properties of Good Unit Tests

1. Automated
2. Thorough 
   - Cover all the required functionality
3. Repeatable
   - Unordered
4. Independent
   - Atomic: Each test can be run on its own
   - Isolated: [Simulates dependencies](#Test-fixtures) using stubs and [mock object](#Mock-Objects)
5. Well engineered
   - Maintainable
   - Readable
   - Correct
   - Documented

### Unit Testing Frameworks

> Framework is a library that does everything for you including:
>
> - Writing tests
> - Running tests
> - Reporting the results

Some time this is called the `Test Harness`

Examples: JUnit, NUnit, PyUnit, CUnit, fUnit, HttpUnit

---

## Test fixtures

> Fixed state/environment of the program used as baseline for running tests.

Also known as *Test Context*

Examples:

- Fixed database
- Erasing hard disk
- Copy a specific known set of files

---

## Mock objects

Useful when:

- Real states of objects too difficult to create
- Real object is slow
- Real object returns non-deterministic values
- Real object does not exist

Example:

- Testing a Loan/Library class the actual time of borrow/return operation can be done by using a mock object (instead of system clock)

---

## Test-Driven development (TDD)

> Before the code for any new feature is written, all the tests for that feature are written.

At first, all the tests will fail, because there’s no code yet. 

The developer then writes feature code until all the tests pass. That’s when they must stop writing code for that features.

Examples: Lecture slide page 12

### Rules of TDD

- Develop in small increments
- **Cycle[^1] should be in minutes, not hours.**
- All tests should fail initially
- Tests are created from concrete requirements

### Benefits of TDD

- Increase your confidence in the code’s quality
- Better understanding of the requirements
- Bugs are found earlier
- Code maintenance
- **Unit test makes better design since programmer has to understand the features.**
- Low-level regression test unit
- Unit tests demonstrate concrete progress.

## Refactoring

See [Week 9 note](W9-lec9.md).

## Assertions

> Statements that you believe to be true.
>
> What state do you think your program is in when it’s running correctly.

Example: You’re expecting our age to be between 18 and 100

```java
assert (age >= 18) && (age <= 100)
```

### Assertion in java

You have to run with `-ea`[^2]

```java
java -ea packagename.Main
```

When assertion is hit, it throws `AssertionError`

----

## Control flow

You can use [assertion](#Assertions) to check that **you never reach a certain point in the code**



Examples:

```java
switch (value) {
    case 1:
        break;
    case 2:
        break;
    default:
        assert false; // Should not reach here.
}
```

---

## JUnit

```java
import org.junit.Test;
import static org.junit.Assert.*;

public class TestFile {
    @Test
    public void testFileNoEntry() {
        INIFile file = new INIFile();
        assertTrue(file.getValue("section", "key") == null);
    }
}
```



### List of JUnit Assertions:

Refer to lecture slide 30.



### Test methods

- Expect a given exceptions:

  `@Test(expected=<Exception>)`

- Test timeout

  `@Test(timeout=100)`

### [Test Fixtures](#Test-fixtures)

Use `@Before` on a method to have it run before each test method

Use `@After` on a method to have it run after each method

Use `@BeforeClass` on a method to have it run ONCE.

Similarly for `@AfterClass`

---

## Designing test cases

Need to have different cases:

- Normal case
- Expect to fail case
- Boundary values

---

## Mock object

Example:

```java
public class MockConnection implements AuthorizationChanel {
    
    public String requestedUsername;
    public String requestedPassword;
    public boolean authorizationResult;
    
    public boolean isUserValid(String username, String password) {
        this.requestedUsername = username;
        this.requestedPassword = password;
        return authorizationResult;
    }   
}

@Test
public void testLoginDialogSuccess {
    AuthorizationChannel mock = new MockConnection();
    mock.authorizationResult = true;
    
    LoginDialog dlg = new LoginDialog(mock);
    dlg.setUsername("bob");
    dlg.setPassword("pwd");
    dlg.submit();
    
    assertTrue(dlg.isAuthorized());
    assertEquals("bob", mock.requestedUsername);
    assertEquals("pwd", mock.requestedPassword);
}
```

---

## Logging

Like print but has more features

At the beginning of the class

```java
import java.logging.Logger;

private static final Logger logger = Logger.getLogger("classname");
```

At log point:

```java
logger.info("Check1")
```



**Features**:

- Log to file
- Filter by severity and module
  - SEVERE
  - WARNING
  - INFO
  - FINE
  - FINER
  - FINEST
- Timestamps on log messages

Example:

```java
public class Nose{
    
    private static Logger logger = Logger.getLogger("com.wombat.nose");
    
    public static void main(String argv[]) {
        logger.fine("doing stuff");
        try{
            Wombat.sneeze();
        } catch (Exception ex) {
            logger.log(Level.WARNING, "trouble sneezing", ex);
        }
        logger.fine("done");
    }
}
```













---

[^1]: Not sure what cycle referring to.
[^2]: enable assertions

