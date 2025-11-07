## Table of Contents

- [PHP](#php)
  - [OOP](#oop)
  - [Encapsulation](#encapsulation)
  - [Abstract classes vs Interfaces](#abstract-classes-vs-interfaces)
  - [Generators](#generators)
    - [Key characteristics of generators in PHP](#key-characteristics-of-generators-in-php)
  - [Coroutines](#coroutines)
    - [Key Characteristics of Coroutines in PHP](#key-characteristics-of-coroutines-in-php)
    - [Implementation in PHP](#implementation-in-php)
  - [Coroutine Types](#coroutine-types)
    - [Coroutine types by implementation](#coroutine-types-by-implementation)
    - [Coroutine types by control flow](#coroutine-types-by-control-flow)
  - [Closures](#closures)
  - [Traits](#traits)
    - [Features of Traits](#features-of-traits)
    - [Summary of Traits Features](#summary-of-traits-features)
  - [Traits self and static](#traits-self-and-static)
    - [self within a Trait](#self-within-a-trait)
    - [static within a Trait (Late Static Binding)](#static-within-a-trait-late-static-binding)
  - [Why Laravel Octane Fast?](#why-laravel-octane-fast)
  - [Authentication in PHP](#authentication-in-php)
  - [Testing in PHP](#testing-in-php)
  - [Functional vs E2E vs Feature tests](#functional-vs-e2e-vs-feature-tests)
    - [Functional Testing](#functional-testing)
    - [End-to-End (E2E) Testing](#end-to-end-e2e-testing)
    - [Feature Testing](#feature-testing)
    - [In summary](#in-summary)
- [DB](#db)
  - [SQL Parameters](#sql-parameters)
  - [Indexes and Index Types](#indexes-and-index-types)
    - [MySQL Index Types](#mysql-index-types)
    - [Types by Purpose](#types-by-purpose)
    - [Types by Storage Structure](#types-by-storage-structure)
  - [Transactions](#transactions)
    - [Key characteristics of a database transaction](#key-characteristics-of-a-database-transaction)
  - [ACID](#acid)
    - [Atomicity](#atomicity)
    - [Consistency](#consistency)
    - [Isolation](#isolation)
    - [Durability](#durability)
  - [Normalization and Denormalization](#normalization-and-denormalization)
    - [Database Normalization](#database-normalization)
    - [Database Denormalization](#database-denormalization)
  - [Normal Forms](#normal-forms)
    - [First Normal Form](#first-normal-form)
    - [Second Normal Form](#second-normal-form)
    - [Third Normal Form](#third-normal-form)
    - [Boyce-Codd Normal Form](#boyce-codd-normal-form)
  - [SQL vs NoSQL](#sql-vs-nosql)
    - [Key Differences](#key-differences)
    - [Detailed Breakdown](#detailed-breakdown)
    - [When to Choose Which?](#when-to-choose-which)
  - [Locking and Locks](#locking-and-locks)
    - [Types of Locks](#types-of-locks)
    - [Locking Statements](#locking-statements)
    - [Purpose of Locking](#purpose-of-locking)
    - [Considerations](#considerations)
  - [Consistency Table](#consistency-table)
  - [Sharding and Replication](#sharding-and-replication)
    - [Sharding](#sharding)
    - [Replication](#replication)
- [JS](#js)
  - [OOP in JS and How it Differs from PHP](#oop-in-js-and-how-it-differs-from-php)
    - [OOP in JavaScript](#oop-in-javascript)
    - [OOP in PHP](#oop-in-php)
- [Architecture and Clean Code](#architecture-and-clean-code)
  - [SOLID](#solid)
  - [GraphQL and REST](#graphql-and-rest)
    - [GraphQL](#graphql)
    - [REST](#rest)
  - [Is REST Stateless?](#is-rest-stateless)
  - [Idempotency](#idempotency)
    - [Key Characteristics](#key-characteristics)
    - [Idempotent vs Non-Idempotent HTTP Methods](#idempotent-vs-non-idempotent-http-methods)
  - [Resilience Patterns](#resilience-patterns)
    - [Key resilience patterns](#key-resilience-patterns)
    - [Benefits of using resilience patterns](#benefits-of-using-resilience-patterns)
  - [Eventual Consistency](#eventual-consistency)
    - [How it works](#how-it-works)
    - [Key characteristics](#key-characteristics)
  - [Is Async Code faster than Blocking code?](#is-async-code-faster-than-blocking-code)
  - [Consensus in microservices](#consensus-in-microservices)
    - [How it works](#how-it-works-1)
    - [Why it's important in microservices](#why-its-important-in-microservices)
    - [Practical considerations](#practical-considerations)
  - [Raft and Paxos](#raft-and-paxos)
    - [Raft](#raft)
    - [Paxos](#paxos)
    - [Choosing between Raft and Paxos in microservices](#choosing-between-raft-and-paxos-in-microservices)
  - [Round Robin algorithm in microservices](#round-robin-algorithm-in-microservices)
    - [How it works](#how-it-works-2)
    - [Example](#example)
    - [When to use it](#when-to-use-it)
    - [Alternatives](#alternatives)
- [Other](#other)
  - [Hashing vs Encryption vs Encoding](#hashing-vs-encryption-vs-encoding)

# PHP


## OOP

Object-Oriented Programming (OOP) in PHP is a programming paradigm that organizes code around "objects" rather than
"actions" and data rather than logic. It enables developers to structure applications like real-world entities,
improving code organization, reusability, and maintainability.

**Here are the core concepts of OOP in PHP:**

* **Classes**: A class is a blueprint or a template for creating objects. It defines the properties (variables) and
methods (functions) that objects of that class will possess. 
* **Objects**: An object is an instance of a class. When you create an object from a class, it gets its own set of
properties and can utilize the methods defined in the class. 
* **Properties**: These are variables within a class that define the attributes or characteristics of an object.
* **Methods**: These are functions within a class that define the behaviors or actions an object can perform.
* **Encapsulation**: This principle bundles data (properties) and methods that operate on the data within a single unit
(the class). It also restricts direct access to some of an object's components, promoting data integrity.
* **Inheritance**: This mechanism allows a new class (child class) to inherit properties and methods from an existing
class (parent class). This promotes code reuse and establishes a hierarchical relationship between classes.
* **Polymorphism**: This refers to the ability of objects of different classes to respond to the same method call in
their own specific ways. It allows for more flexible and extensible code.
* **Abstraction**: This involves hiding complex implementation details and showing only the essential features of an
object. Abstract classes and interfaces are key elements for achieving abstraction in PHP.


## Encapsulation

Encapsulation in PHP, as a core principle of Object-Oriented Programming (OOP), involves bundling data (properties) and 
the methods (functions) that operate on that data within a single unit, which is a class. It serves to hide the internal
implementation details of an object and protect its data from direct, unauthorized external access.

**Key aspects of PHP OOP Encapsulation:**

* **Data Hiding:** Encapsulation restricts direct access to a class's internal properties, typically by declaring them
with private or protected access modifiers. This prevents external code from directly manipulating the object's state,
ensuring data integrity.
* **Controlled Access:** Instead of direct access, interaction with the encapsulated data occurs through public methods,
often referred to as "getters" and "setters." These methods provide a controlled interface for retrieving and modifying
the object's properties, allowing for validation and business logic to be applied during data manipulation.
* **Improved Modularity and Maintainability:** By encapsulating data and behavior, classes become more self-contained
and independent. This makes code easier to understand, test, and maintain, as changes within a class's internal
implementation are less likely to affect other parts of the application.


## Abstract classes vs Interfaces

The main difference is that an abstract class can have both concrete (implemented) and abstract methods and
properties, allowing for partial implementation and shared code. An interface can only define method signatures
and constants, acting purely as a contract for behavior.

| **Feature**                         | **Abstract Class	**                                                                                 | **Interface**                                                                                                   |
|-------------------------------------|-----------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------|
| **Method Implementation**           | 	Can have both abstract (no body) and concrete (with body) methods.                                 | 	All methods are abstract by default and cannot have a body/implementation.                                     |
| **Properties**                      | 	Can define properties (instance variables) with any access modifier (public, protected, private).	 | Cannot have properties, only constants are allowed.                                                             |
| **Inheritance**	                    | A class can only extend a single abstract class (single inheritance).	                              | A class can implement multiple interfaces (multiple inheritance of behavior).                                   |
| **Access Modifiers**	               | Can use all access modifiers (public, protected, private) for methods and properties.	              | All methods must be public.                                                                                     |
| **Relationship Type**               | 	Represents an "is a" relationship (e.g., a Dog is a Mammal abstract class).	                       | Represents a "can do" or "has a capability" relationship (e.g., a Dog can implement the Retrievable interface). |

**When to use which:**

* Use an Abstract Class when you want to provide a common base class for a group of closely related classes, share some
default functionality and properties among them, but also force subclasses to implement specific methods.
* Use an Interface when you need to define a common set of behaviors (a contract) that completely unrelated classes can
promise to follow, providing flexibility for different objects to be used in the same way without sharing implementation
details. 


## Generators

In PHP, a generator provides a simple and memory-efficient way to create iterators. It allows you to write functions
that can be iterated over using a foreach loop, similar to arrays, but without the need to build the entire dataset in
memory at once.

### Key characteristics of generators in PHP

* `yield` **keyword**: Instead of returning a single value and terminating the function, a generator uses the `yield`
keyword to produce a value and pause its execution. When the next value is requested during iteration, the generator
resumes from where it left off.
* **Memory efficiency**: Generators are particularly useful when dealing with large datasets or streams of data. They
only generate and provide values one at a time as they are needed, reducing memory consumption compared to storing all
values in an array.
* **Simplified iterator implementation**: Generators offer a more concise and readable way to implement iterators
compared to creating a class that explicitly implements the `Iterator` interface.
* **Lazy evaluation**: Values are generated on demand, meaning that complex computations or resource-intensive
operations are only performed when a value is actually requested by the `foreach` loop. 

**Example:**
```php
<?php
function generateNumbers($start, $end) {
    for ($i = $start; $i <= $end; $i++) {
        yield $i; // Yields a value and pauses execution
    }
}

$numbers = generateNumbers(1, 5);

foreach ($numbers as $number) {
    echo $number . " "; // Output: 1 2 3 4 5
}
?>
```
In this example, `generateNumbers()` is a generator function. When called, it returns a `Generator` object. The `foreach`
loop then iterates over this object, causing the `generateNumbers()` function to execute and `yield` a number each time
a new value is requested, until all numbers have been yielded.

## Coroutines

Coroutines in PHP is a programming construct that allows a function to pause its execution at certain points and later
resume from where it left off, maintaining its internal state. This capability makes them valuable for implementing
cooperative multitasking and managing asynchronous operations in a more sequential and readable manner.

### Key Characteristics of Coroutines in PHP

* **Suspend and Resume**: Unlike regular functions that execute from start to finish, coroutines can suspend their 
execution, yielding control back to the caller or an event loop, and then be resumed later to continue from the point of
suspension.
* **State Preservation**: When a coroutine suspends, it preserves its local variables and execution context, allowing it
to pick up exactly where it left off upon resumption.
* **Cooperative Multitasking**: Coroutines enable cooperative multitasking, where different tasks voluntarily yield
control to each other, rather than being preemptively interrupted by an operating system scheduler (as in threads). This
can lead to more efficient resource utilization in certain scenarios.
* **Asynchronous Programming**: Coroutines are particularly well-suited for handling asynchronous operations like I/O
(network requests, file operations, database queries) in a non-blocking way. They allow you to write code that looks
synchronous but internally handles the waiting for these operations without blocking the entire application. 

### Implementation in PHP

**PHP offers two primary mechanisms for implementing coroutines:**

* **Generators (via yield)**: Generators, introduced in earlier PHP versions, can be used to create basic coroutines.
They allow a function to yield values multiple times, effectively pausing and resuming execution. While powerful for
iteration and memory efficiency, they are "stackless" and cannot suspend anywhere in the call stack.
* **Fibers (PHP 8.1+)**: Fibers provide native, lightweight concurrency and are the foundation for modern PHP coroutine
implementations. Fibers are "stackful," meaning they can suspend and resume execution at any point within their call
stack, offering more flexibility and reducing the need for boilerplate code compared to generator-based approaches. 

**Benefits of using Coroutines in PHP:**

* **Improved Readability**: Coroutines can make asynchronous code more readable and easier to reason about by allowing
it to be written in a more sequential, synchronous-looking style.
* **Enhanced Performance**: They enable non-blocking I/O, which can significantly improve the performance and
responsiveness of applications, especially in I/O-bound scenarios.
* **Resource Efficiency**: Compared to traditional threads, fibers (and thus coroutines) are much more lightweight,
consuming less memory and CPU overhead. 

Libraries like Amp and Revolt PHP leverage Fibers to provide robust frameworks for building asynchronous applications
with coroutines in PHP.

## Coroutine Types

Coroutines can be categorized by their implementation as **stackful** or **stackless**, and by their control flow as
**symmetric** or **asymmetric**. **Stackful** coroutines manage their own stack, allowing them to be suspended and
resumed from nested calls, while **stackless** coroutines are limited to suspending and resuming at a specific level,
often within a single function. **Symmetric** coroutines allow for freely yielding to any other coroutine, while
**asymmetric** coroutines have a more constrained yield-to-caller relationship.

### Coroutine types by implementation

* **Stackful**: These coroutines have their own stack and can suspend execution from within nested function calls.
* **Stackless**: These coroutines lack their own full stack. They cannot suspend from arbitrary nested calls, and are
more constrained in their control flow. 


### Coroutine types by control flow

* **Symmetric**: In this model, a coroutine can yield to any other coroutine.
* **Asymmetric**: Here, the control flow is more restricted. A coroutine can only yield control back to its immediate
caller, as seen in languages with keywords like yield. 


## Closures

In PHP, a closure is an anonymous function that can access variables from the scope in which it was created, even after
that scope has ceased to exist. All anonymous functions in PHP are closures.

**Key characteristics of PHP Closures:**

* **Anonymous**: Closures do not have a name, unlike regular functions. They are defined inline and can be assigned to
variables or passed as arguments.
* **Variable Inheritance**: Closures can "inherit" variables from their parent scope using the `use` keyword. These
variables are passed by value by default, but can be passed by reference using the `&` operator.
* **`$this` Context**: When a closure is created within a class method, it automatically binds to the `$this` object of
that class, allowing it to access class properties and methods. This behavior can be explicitly managed using
`Closure::bindTo()` or `Closure::bind()`.
* **`Closure` Class**: Internally, PHP represents closures as objects of the `Closure` class. This class provides
methods like `bindTo()`, `bind()`, and `call()` for manipulating the closure's scope and binding.`


## Traits

Traits in PHP provide a way to reuse code across multiple classes. They are intended to address the limitation that PHP
only supports single inheritance. With traits, you can create reusable code that can be shared across different classes,
even if those classes don’t share a common parent class.

**Key Features of Traits in PHP:**

* **Code Reusability**: Traits allow you to reuse methods across multiple classes without needing inheritance.
* **No Multiple Inheritance**: PHP doesn’t support multiple inheritance, but traits allow classes to share functionality
in a way that resembles multiple inheritance.
* **Conflict Resolution**: When multiple traits are used, and there’s a conflict (e.g., methods with the same name), PHP
provides mechanisms for resolving the conflict.
* **Cannot be instantiated**: Traits cannot be instantiated on their own; they are meant to be used within classes.
* **No properties**: Traits can contain methods but typically don’t define properties (although they can use existing
class properties).

**When to Use Traits:**

* When you need to share functionality across multiple classes that do not share a common parent class.
* When multiple classes require similar behavior but you cannot use inheritance due to the single inheritance limitation
in PHP.

**Syntax of Traits:**

* Traits are defined using the trait keyword.
* A class uses a trait with the use keyword.

**Example of a Trait in PHP:**

```php
<?php

trait LoggerTrait {
    public function log($message) {
        echo "Logging message: " . $message;
    }
}

class FileStorage {
    use LoggerTrait;

    public function save($file) {
        $this->log("Saving file: " . $file);
        // File saving logic here
    }
}

class DatabaseStorage {
    use LoggerTrait;

    public function save($data) {
        $this->log("Saving data to the database");
        // Database saving logic here
    }
}

$fileStorage = new FileStorage();
$fileStorage->save("document.txt");
// Output: Logging message: Saving file: document.txt

$dbStorage = new DatabaseStorage();
$dbStorage->save("user data");
// Output: Logging message: Saving data to the database

?>
```

### Features of Traits

1. **Using Multiple Traits in a Class:**

    A class can use multiple traits by separating them with commas.

    ```php
    <?php

    trait LoggerTrait {
        public function log($message) {
            echo "Logging: " . $message . PHP_EOL;
        }
    }

    trait FileSaverTrait {
        public function saveFile($file) {
            echo "Saving file: " . $file . PHP_EOL;
        }
    }

    class FileManager {
        use LoggerTrait, FileSaverTrait;
    }

    $fileManager = new FileManager();
    $fileManager->log("Test message");
    $fileManager->saveFile("document.txt");

    ?>
    ```

    Here, `FileManager` uses both `LoggerTrait` and `FileSaverTrait`, reusing functionality from both traits.

2. **Conflict Resolution (Method Overriding):**

    If two traits used in the same class have methods with the same name, PHP allows you to resolve conflicts by
    explicitly defining which method to use.

    ```php
    <?php

    trait LoggerTrait {
        public function log($message) {
            echo "Logging message: " . $message;
        }
    }

    trait FileLoggerTrait {
        public function log($message) {
            echo "Logging to file: " . $message;
        }
    }

    class FileStorage {
        use LoggerTrait, FileLoggerTrait {
            FileLoggerTrait::log insteadof LoggerTrait;  // Resolve conflict
            LoggerTrait::log as logToConsole;            // Alias for the other method
        }
    }

    $fileStorage = new FileStorage();
    $fileStorage->log("Saving file");       // Output: Logging to file: Saving file
    $fileStorage->logToConsole("Backup");   // Output: Logging message: Backup

    ?>
    ```

    In this case, the class `FileStorage` uses two traits that both define a `log()` method. The conflict is resolved by
    specifying which trait’s `log()` method should be used (`FileLoggerTrait::log`), and the other one is given an alias
    (`LoggerTrait::log as logToConsole`).

3. **Abstract Methods in Traits:**

    Traits can define abstract methods that the using class must implement.

    ```php
    <?php

    trait LoggerTrait {
        abstract public function getLogger();

        public function log($message) {
            $logger = $this->getLogger();
            $logger->logMessage($message);
        }
    }

    class Application {
        use LoggerTrait;

        public function getLogger() {
            return new class {
                public function logMessage($msg) {
                    echo "Logging: " . $msg;
                }
            };
        }
    }

    $app = new Application();
    $app->log("Application started.");
    // Output: Logging: Application started.

    ?>
    ```

    In this example, the `LoggerTrait` has an abstract method `getLogger()`, which must be implemented by any class that
    uses the trait. This allows the trait to rely on behavior defined in the class.

4. **Traits and Constructor Methods:**

    Traits cannot have their own constructors, but they can define methods that are called from the constructor of the
    class that uses the trait.

    ```php
    <?php

    trait InitializerTrait {
        public function initialize() {
            echo "Initialization complete." . PHP_EOL;
        }
    }

    class User {
        use InitializerTrait;

        public function __construct() {
            $this->initialize();
        }
    }

    $user = new User(); 
    // Output: Initialization complete.

    ?>
    ```

    In this example, the `initialize()` method is defined in the trait and called inside the constructor of the `User`
    class.

### Summary of Traits Features

* **Code Reusability**: Allows reuse of methods across different classes.
* **Conflict Resolution**: You can resolve method name conflicts using `insteadof` and `as`.
* **No Multiple Inheritance**: Traits solve the problem of PHP’s single inheritance limitation by allowing classes to
share methods without extending a common parent class.
* **Cannot be Instantiated**: Traits are not standalone — they must be used within a class.
* **Abstraction**: Traits can contain abstract methods, which must be implemented by the class that uses them.
* **Constructor Methods**: Traits cannot have constructors but can define methods to be called within the class
constructor.

Traits provide flexibility for code reuse and improve maintainability in PHP applications by allowing classes to share
functionality without needing to extend the same class.


## Traits self and static

In PHP, when using `self` and `static` within traits, it is important to understand how they interact with Late Static
Binding and the class that utilizes the trait.

### self within a Trait

* When `self::` is used within a trait, it refers to the class where the trait is defined, not the class where the trait
is used.
* This means that if you define a static method or property in a trait and reference it using `self::`, it will always
point to the trait's own definition, regardless of the class that incorporates the trait.
* This behavior can be limiting if the intention is to interact with the specific class using the trait. 

### static within a Trait (Late Static Binding)

* When `static::` is used within a trait, it leverages Late Static Binding. This means that `static::` will refer to the
class where the trait is used (the "calling class") at runtime.
* This allows for more flexible and dynamic behavior, as the methods and properties defined in the trait can interact
with the specific context of the class that is employing them.
* For instance, if a trait defines a static method that uses `static::someMethod()`, and two different classes use that
trait, `someMethod()` will resolve to the method defined in each respective class at runtime.

**Example:**

```php
<?php
trait MyTrait {
    public static function getClassNameSelf() {
        return self::class;
    }

    public static function getClassNameStatic() {
        return static::class;
    }
}

class ClassA {
    use MyTrait;
}

class ClassB {
    use MyTrait;
}

echo ClassA::getClassNameSelf();    // Output: MyTrait
echo ClassA::getClassNameStatic();  // Output: ClassA

echo ClassB::getClassNameSelf();    // Output: MyTrait
echo ClassB::getClassNameStatic();  // Output: ClassB
?>
```

**Key Takeaway:**

* Use `self::` within a trait when you intend to refer to the trait's own static members or methods, regardless of the
incorporating class.
* Use `static::` within a trait when you need to leverage Late Static Binding and interact with the static members or
methods of the specific class that is using the trait.


## Why Laravel Octane Fast?

Laravel Octane achieves significantly faster performance compared to traditional PHP-FPM setups primarily by optimizing
how the Laravel application handles requests.

**Here's why:**

* **Reduced Bootstrapping Overhead**: In a traditional PHP-FPM environment, the entire Laravel framework is
re-bootstrapped for every incoming request. This involves loading configuration, registering service providers, and
setting up the application's core components each time. Octane, leveraging tools like Swoole or RoadRunner, boots the
Laravel application once and keeps it in memory. Subsequent requests then reuse this already-booted application instance,
eliminating the repetitive and time-consuming bootstrapping process.
* **Long-Running Processes and Persistent Connections**: Octane utilizes long-running processes (workers) that remain
active and ready to handle requests. This allows for persistent database connections, Redis connections, and other
service connections to be maintained across multiple requests, reducing the overhead of establishing new connections for
each request.
* **Concurrent Request Handling**: Octane's underlying servers (Swoole, RoadRunner, or FrankenPHP) enable the Laravel
application to handle multiple requests concurrently within a single process. This is a significant improvement over the
typical PHP-FPM model where each request is processed sequentially by a separate PHP-FPM process.
* **Efficient Resource Management**: By keeping the application in memory and reusing resources, Octane reduces the
overall CPU and memory consumption per request, especially under the high load. While the initial memory footprint might
be higher due to the persistent application state, the efficiency gained in handling subsequent requests leads to better
resource utilization in the long run. 

In essence, Laravel Octane transforms the traditional stateless, request-response cycle of PHP into a stateful,
long-running application environment, dramatically reducing latency and increasing throughput.

## Authentication in PHP


Authentication in PHP typically involves verifying a user's identity to grant them access to protected resources. Common
methods include:

1. Session-Based Authentication:

   * **Login Form**: A user submits a form with credentials (e.g., username/email and password).
   * **Credential Verification**: The PHP script receives these credentials, usually via `$_POST`, and verifies them
   against stored user data (e.g., in a database). Password hashing (e.g., `password_hash()` and `password_verify()`) is
   crucial for security.
   * **Session Creation**: If credentials are valid, a session is initiated using `session_start()`, and user-specific
   data (e.g., user ID, role) is stored in the `$_SESSION` superglobal.
   * **Session Management**: A session cookie containing the session ID is sent to the browser, allowing subsequent
   requests to be associated with the user's session.
   * **Access Control**: On protected pages, the `$_SESSION` data is checked to confirm the user's authenticated status
   before granting access.

2. HTTP Basic Authentication:

   * PHP's `header()` function can be used to send a `WWW-Authenticate` header, prompting the browser for a username and
   password.
   * These credentials are then available in `$_SERVER['PHP_AUTH_USER']` and `$_SERVER['PHP_AUTH_PW']`.
   * This method is simpler but less secure than session-based authentication for web applications as credentials are
   sent with every request and are not encrypted by default without HTTPS.

3. Token-Based Authentication (e.g., JWT):

   * Upon successful login, the server issues a token (e.g., a JSON Web Token).
   * The client stores this token and sends it with each subsequent request, often in an `Authorization` header.
   * The server validates the token to authenticate the request without relying on server-side sessions. This is common
   for APIs and single-page applications.

**Security Considerations:**

* **Password Hashing**: Always hash passwords using strong, modern algorithms like `password_hash()` (Bcrypt).
* **Input Validation and Sanitization**: Prevent SQL injection, XSS, and other vulnerabilities.
* **HTTPS**: Use HTTPS to encrypt communication and protect credentials and session data.
* **Session Management**: Implement secure session management, including proper session expiration and regeneration.
* **Two-Factor Authentication (2FA)**: Add an extra layer of security requiring a second verification method. 


## Testing in PHP

PHP applications can be tested using various approaches, each serving a distinct purpose in ensuring code quality and
functionality.

**The primary types of tests in PHP are:**

* **Unit Tests:**
    * Focus on testing individual, isolated units of code, such as functions or methods within a class.
    * Aims to verify that each unit behaves as expected in isolation.
    * Often employs "mocking" or "stubbing" to simulate dependencies like databases or external APIs, ensuring the unit
    under test is truly isolated.
    * Frameworks like PHPUnit are commonly used for unit testing. 

* **Integration Tests:**
    * Verify the interactions between different units or components of an application.
    * Tests whether various parts of the system work together correctly, including interactions with real dependencies
    like databases, file systems, or external services.
    * Ensures that the "integration" points between components function as intended. 

* **Functional/Acceptance Tests:**
    * Focus on testing the overall functionality of a feature or an entire application from the user's perspective.
    * Simulates user interactions, such as navigating through pages, filling out forms, and verifying the expected
    outcomes.
    * Tools like Codeception or Behat (for Behavior-Driven Development) are often used for these types of tests. 

* **Performance Tests:**
    * Evaluate the speed, responsiveness, and stability of an application under various load conditions.
    * Measures metrics like response time, throughput, and resource utilization to identify performance bottlenecks. 

* **Security Tests:**
    * Identify vulnerabilities and weaknesses in the application's security.
    * Includes testing for common security flaws like SQL injection, cross-site scripting (XSS), and authentication
    issues. 

* **Regression Tests:**
    * Ensure that new code changes or bug fixes do not introduce new defects or negatively impact existing
    functionalities.
    * Involves re-running a suite of previously passed tests after modifications to the codebase. 

* **Mutation Tests:**
    * Assess the effectiveness of existing test suites by introducing small, deliberate changes ("mutations") to the
    code and checking if the tests fail as a result.
    * Aims to identify areas where test coverage might be insufficient. 

By employing a combination of these testing types, developers can achieve a comprehensive approach to quality assurance
in PHP development.


## Functional vs E2E vs Feature tests

Functional, end-to-end (E2E), and feature testing are distinct but related types of software testing, each with a
different scope and objective.

### Functional Testing

* **Focus**: Verifies that specific features or functions of the software meet the defined requirements and behave as
expected. It answers the question, "Does this particular function do what it's supposed to do?"
* **Scope**: Typically focuses on individual components or modules, or a specific user story, in isolation or with
minimal integration. It checks the "what" of the software.
* **Example**: Testing if a login function successfully authenticates a user with correct credentials and rejects
incorrect ones, or if a "add to cart" button correctly adds an item to the shopping cart. 

### End-to-End (E2E) Testing

* **Focus**: Simulates real-world user scenarios to verify the entire system's flow and functionality from start to
finish. It ensures that all integrated components and external systems work together seamlessly to deliver the intended
user experience.
* **Scope**: Broad, covering the entire application and its interactions with databases, APIs, and other external
services. It checks the "how" of the software in a complete user journey.
* **Example**: Testing the complete e-commerce flow, from user login, browsing products, adding items to the cart,
proceeding to checkout, making a payment, and receiving an order confirmation. 

### Feature Testing

* **Focus**: A specific type of functional testing centered on a newly implemented feature or a significant modification
to an existing feature. It verifies that the new or changed functionality works correctly and integrates properly within
the system.
* **Scope**: Limited to the new or modified feature, but can involve aspects of functional testing (for the feature
itself) and potentially integration testing (if the feature interacts with other parts of the system).
* **Example**: Testing a newly added "wishlist" feature in an e-commerce application, ensuring users can add, view, and
remove items from their wishlist. 

### In summary

* **Functional testing**: is a general term for verifying individual functions against requirements.
* **Feature testing**: is a specialized form of functional testing, concentrating on specific new or updated features.
* **End-to-end testing**: encompasses a broader scope, validating entire user flows and system interactions, often
including multiple functional components and external integrations.



# DB

## SQL Parameters

In SQL, parameters are placeholders within a query that are replaced with actual values at the time of execution. They 
allow for the creation of flexible and dynamic queries that can be adapted to different inputs without requiring
modifications to the query's core structure.

**Why parameters are necessary:**

* **Security (SQL Injection Prevention)**: This is the primary reason for using parameters. Without them, direct user
input concatenated into SQL queries creates a vulnerability to SQL injection attacks. Parameters ensure that
user-provided data is treated as values and not as executable code, preventing malicious input from altering the
query's intent. 

```sql
-- Vulnerable (SQL Injection risk)
SELECT * FROM Users
WHERE Username = '" + userInputUsername + "'
  AND Password = '" + userInputPassword + "';

-- Secure (using parameters)
SELECT * FROM Users
WHERE Username = @Username
  AND Password = @Password;
```

* **Performance Optimization**: When using prepared statements with parameters, the database server can parse and
optimize the query once. Subsequent executions with different parameter values can then reuse this pre-optimized plan,
leading to improved performance, especially for frequently executed queries.
* **Code Readability and Maintainability**: Parameters make SQL queries cleaner and easier to understand by separating
the query logic from the specific data values. This improves code readability and simplifies maintenance as changes to
data values do not require modifying the SQL statement itself.
* **Flexibility and Reusability**: Parameters enable the creation of generic queries that can be reused with varying
input values. For example, a single query can be used to retrieve data for different users, products, or date ranges by
simply changing the parameter values.
* **Data Type Handling**: Parameters help enforce correct data types, as the database system can ensure that the
provided values match the expected data types of the parameters, reducing potential errors.


## Indexes and Index Types

In MySQL, an index is a data structure used to find rows with specific column values quickly, much like an index in a
book helps you go directly to a topic rather than reading every page. Without an index, MySQL might have to scan the
entire table to find relevant rows (a full table scan), which is slow on large tables.

Indexes speed up `SELECT` queries and optimize `JOIN`, `ORDER BY`, and `WHERE` operations, but they add overhead to
`INSERT`, `UPDATE`, and `DELETE` queries because the index structure must also be updated.

### MySQL Index Types

MySQL categorizes indexes based both on their purpose and the underlying storage data structure.

### Types by Purpose

* **PRIMARY KEY**: A special unique index that enforces data integrity by ensuring every row has a unique identifier and
no `NULL` values. InnoDB uses this as a clustered index, meaning the actual data rows are physically stored in the order 
of the primary key, which makes primary key lookups extremely fast.
* **UNIQUE Index**: Similar to a primary key, it ensures all values in the indexed column(s) are unique, but a table
can have multiple unique indexes and they can contain `NULL` values (unless specified as `NOT NULL`).
* **INDEX (Regular Index)**: A general-purpose index used to speed up data retrieval. It allows duplicate values.
* **FULLTEXT Index**: Used for full-text searches on `CHAR`, `VARCHAR`, and `TEXT` columns using the `MATCH()` and
`AGAINST()` syntax. It's designed for natural language keyword searching rather than direct value comparisons.
* **SPATIAL Index**: Used for geometry-valued columns (like `GEOMETRY`, `POINT`, `LINESTRING`, `POLYGON`) to perform
spatial data lookups efficiently.
* **Composite Index**: An index created on multiple columns. The order of columns matters, as the index is useful only
if queries filter using the leftmost columns first. 

### Types by Storage Structure

The underlying structure determines how the index works internally:

* **B-Tree (B+ Tree)**: The default and most common index type for the InnoDB storage engine. B-trees keep data sorted
and are highly efficient for a wide range of operations including equality (`=`), range (`<`, `>`, `BETWEEN`), and
sorting (`ORDER BY`) queries. Most indexes you create (Primary, Unique, Regular, Fulltext, etc., in InnoDB) use this
structure.
* **HASH**: Used primarily by the `MEMORY` storage engine. Hash indexes are very fast for exact equality lookups (`=`)
because they use a hash function to directly locate data in one step. However, they cannot be used for range searches or
sorting, as the hashed values are not stored in a predictable order.
* **R-Tree**: The data structure used for `SPATIAL` indexes to efficiently handle geometric data. 


## Transactions

A database transaction is a single, indivisible unit of work that groups multiple operations together, ensuring they all
succeed or all fail as a single action. This is crucial for maintaining data integrity, especially in cases like a bank
transfer where a withdrawal must be paired with a deposit to avoid inconsistencies. Transactions follow the ACID
properties (Atomicity, Consistency, Isolation, and Durability) to guarantee reliability.

### Key characteristics of a database transaction

* **Atomicity**: Transactions are "all or nothing". If any part of the transaction fails, all changes are rolled back,
and the database returns to its original state.
* **Consistency**: A transaction brings the database from one valid state to another, ensuring that all data integrity
rules are met.
* **Isolation**: Each transaction runs as if it were the only one executing, preventing other operations from seeing
partial or uncommitted changes.
* **Durability**: Once a transaction is successfully committed, its changes are permanent and will survive a system
failure.
* **Commit and Rollback**: If all operations within a transaction are successful, the changes are made permanent in a
process called "commit". If an error occurs, all changes are undone through a "rollback". 


## ACID

**ACID** is an acronym for four key properties of database transactions that guarantee reliability and integrity, even
in the event of errors or system failures.

These properties are fundamental to database management systems (DBMS), especially in scenarios requiring high data
accuracy, such as financial transactions and inventory management.

**Here is what each letter stands for:**

### Atomicity

Atomicity guarantees that each transaction is treated as a single, indivisible unit of work. The entire transaction
either completes successfully, or it is completely rolled back (undone) if any part of it fails.

* **Simply put**: It's "all or nothing." For example, in a bank transfer of funds from Account A to Account B, either
the money is successfully deducted from A and added to B, or if one part fails, neither operation occurs. The database
state remains consistent. 

### Consistency

Consistency ensures that a transaction only brings the database from one valid state to another valid state. It means
any transaction must adhere to all predefined rules, constraints, and business logic within the database (e.g., ensuring
an account balance never drops below zero).

* **Simply put**: The rules of the database are never broken. The database is consistent both before and after the
transaction is executed. 

### Isolation

Isolation guarantees that concurrent transactions do not interfere with each other. Multiple transactions can run
simultaneously, but the database ensures that each transaction is isolated, making it appear as if they are running
sequentially.

* **Simply put**: It's like multiple people using separate fitting rooms in a store. They don't see each other's
intermediate state. One transaction cannot see the uncommitted changes of another until that other transaction is
complete. 

### Durability

Durability guarantees that once a transaction has been committed (successfully completed), its changes are permanent and
will survive any subsequent system failure, such as a power outage or a crash. This is typically achieved through
mechanisms like transaction logs and backups.

* **Simply put**: Once the database says a transaction is done, it's saved forever. The data won't be lost. 


## Normalization and Denormalization

Database normalization and denormalization are two contrasting, yet complementary, strategies used in database design to
organize table structures and optimize performance for different use cases.

### Database Normalization

Normalization is a systematic process of organizing the data in a database to eliminate data redundancy (duplication)
and improve data integrity (accuracy and consistency). The process involves decomposing a large table into smaller,
well-structured tables and defining relationships between them using keys. The process follows a series of rules called
"normal forms" (1NF, 2NF, 3NF, BCNF, etc.).

**Goals of Normalization:**

* **Reduce Data Redundancy**: Storing information only once minimizes wasted storage space.
* **Improve Data Integrity**: When data is stored in a single, primary location, updates are easier to manage, reducing
the risk of inconsistencies.
* **Easier Maintenance**: Smaller, focused tables are easier to manage and understand. 

**Drawbacks of Normalization:**

* **Increased Complexity in Queries**: To retrieve related data that has been split across multiple tables, you need to
use complex `JOIN` operations, which can slow down query performance.
* **Slower Read Speeds**: The overhead of joining many tables takes longer than reading data from a single table. 

### Database Denormalization

Denormalization is the process of intentionally introducing redundancy into a database design to improve performance for
specific read-heavy operations, often after a database has already been normalized. This strategy involves adding
duplicate columns or combining tables into a single table to avoid costly `JOIN` operations during querying.

**Goals of Denormalization:**

* **Improve Query Performance**: Reading data from a single, wider table is much faster than joining multiple smaller
tables.
* **Simplify Queries**: Developers can write simpler `SELECT` statements without many `JOIN` clauses.
* **Support Reporting/Analytics**: Data warehouses and data marts often use highly denormalized designs optimized for
rapid reporting and data analysis (OLAP systems). 

**Drawbacks of Denormalization:**

* **Increased Data Redundancy**: Data is duplicated across tables.
* **Higher Risk of Data Anomalies**: Updating redundant data in multiple places can lead to inconsistencies if not
managed carefully.
* **More Complex Write Logic**: `INSERT`, `UPDATE`, and `DELETE` operations become more complex as redundant copies of
data must be maintained in sync. 

**Summary of Differences**


| **Feature**               | **Normalization**                                                      | **Denormalization**                                                     |
|---------------------------|------------------------------------------------------------------------|-------------------------------------------------------------------------|
| **Goal**	                 | Eliminate redundancy, ensure integrity	                                | Improve read performance, speed up queries                              |
| **Data Redundancy**	      | Low (data is stored once)	                                             | High (data is intentionally duplicated)                                 |
| **Performance (Reads)**	  | Slower (requires more JOINs)	                                          | Faster (fewer JOINs needed)                                             |
| **Performance (Writes)**	 | Faster (fewer plac to update)	                                         | Slower (more places to update redundant data)                           |
| **Complexity**	           | Complex JOIN queries	                                                  | Complex write logic and update management                               |
| **Use Case**	             | OLTP (Online Transaction Processing) systems, transactional databases	 | OLAP (Online Analytical Processing) systems, reporting, data warehouses |


## Normal Forms

Database normalization is a process guided by several "normal forms." Each normal form represents a progressively
stricter set of rules designed to eliminate data redundancy and ensure data integrity.

The three most common and fundamental normal forms (1NF, 2NF, and 3NF) are sufficient for most business applications.

### First Normal Form

A table is in 1NF if it meets two primary criteria:

* **Atomic Values**: Each cell in the table must contain a single, indivisible (atomic) value. You cannot have lists or
arrays of values within one cell.
* **Unique Rows**: Each row must be unique, meaning it must have a primary key to identify it. 

**Example of 1NF Violation:**

| OrderID | Customer	 | ProductIDs |
|---------|-----------|------------|
| 1	      | Alice	    | A101, B202 |

**Corrected to 1NF:** The products are moved to separate rows or a separate table.

| OrderID | Customer	 | ProductID |
|---------|-----------|-----------|
| 1	      | Alice	    | A101      |
| 1	      | Alice	    | B202      |

### Second Normal Form

A table is in 2NF if it is already in 1NF AND all non-key attributes (columns that are not part of the primary key) are
fully dependent on the entire primary key.

This rule applies specifically to tables with a composite primary key (a primary key made of two or more columns).

**Example of 2NF Violation:**

Assume a table tracking course enrollment, where (StudentID, CourseID) is the composite primary key.

| StudentID | CourseID	 | StudentName	 | CourseName  |
|-----------|-----------|--------------|-------------|
| 1	        | CS101	    | Bob	         | CompSci 101 |

`StudentName` depends only on `StudentID` (part of the key), not the whole key. This is a partial dependency.

**Corrected to 2NF:** The data is split into separate tables: Enrollment and Students.

* **Students Table**: (StudentID PK, StudentName)
* **Enrollment Table**: (StudentID PK, CourseID PK, CourseName)

### Third Normal Form

A table is in 3NF if it is already in 2NF AND there are no transitive dependencies. A transitive dependency exists when
a non-key column depends on another non-key column.

**Example of 3NF Violation:**

Assume a table tracking orders, where `OrderID` is the primary key.

| OrderID | Customer	 | CustomerZipCode |
|---------|-----------|-----------------|
| 500	    | Charlie	  | 90210           |

`CustomerZipCode` depends on `Customer` (both non-key attributes), and `Customer` depends on `OrderID`. This is a
transitive dependency.

**Corrected to 3NF:** The data is split into separate tables: `Orders` and `Customers`.

* **Orders Table**: (`OrderID` `PK`, `CustomerID` `FK`)
* **Customers Table**: (`CustomerID` `PK`, `Customer`, `CustomerZipCode`)

### Boyce-Codd Normal Form

BCNF is a stricter version of 3NF. It addresses a specific, rare situation where 3NF does not handle all anomalies. In
BCNF, every determinant (any attribute that determines another attribute) must be a candidate key.

For most practical purposes, achieving 3NF is considered robust enough.

**Summary Table**

| Normal Form | Rule	                                | Simply Explained                                      |
|-------------|--------------------------------------|-------------------------------------------------------|
| 1NF	        | Atomic values, unique rows	          | No lists in cells; every row is unique.               |
| 2NF	        | In 1NF + No partial dependencies	    | All non-key columns depend on the entire primary key. |
| 3NF	        | In 2NF + No transitive dependencies	 | No non-key column depends on another non-key column.  |
| BCNF	       | Stronger 3NF	                        | Every determinant must be a key.                      |


## SQL vs NoSQL

The differences between SQL (relational) and NoSQL (non-relational) databases primarily center on their underlying data
models, scalability approaches, schema flexibility, and best-use cases.

### Key Differences

| **Feature**        | **SQL (Relational) Databases**	                                           | **NoSQL (Non-Relational) Databases**                                     |
|--------------------|---------------------------------------------------------------------------|--------------------------------------------------------------------------|
| **Data Model**	    | Tabular structure (rows and columns)	                                     | Various models (Key-Value, Document, Graph, Wide-Column)                 |
| **Schema**	        | Predefined, rigid schema (must define columns and data types beforehand)	 | Dynamic, flexible schema (can add fields easily as needed)               |
| **Scalability**	   | Primarily vertical (increase power of a single server)	                   | Primarily horizontal (distribute data across multiple servers)           |
| **Query Language** | Structured Query Language (SQL)	                                          | Various query APIs; usually object-based query methods                   |
| **ACID Support**	  | Strong ACID compliance (guarantees data integrity)	                       | Typically offers "eventual consistency"; ACID properties are less strict |
| **Examples**	      | MySQL, PostgreSQL, Oracle, SQL Server	                                    | MongoDB, Cassandra, DynamoDB, Redis                                      |

### Detailed Breakdown

1. **Data Model**

   * **SQL Databases**: Organize data into fixed-schema tables with rows and columns. They are built around the concept
   of relationships between data points, which are managed using foreign keys and JOIN operations. This structured approach ensures highly organized and consistent data.
   * **NoSQL Databases**: Offer a variety of data models designed to handle diverse data types and high volume. Common types include:
       * Document: Stores data in documents (e.g., JSON, XML) (e.g., MongoDB, Couchbase).
       * Key-Value: Stores data as simple key-value pairs (e.g., Redis, DynamoDB).
       * Wide-Column: Stores data in columns family rows (e.g., Cassandra, HBase).
       * Graph: Stores data as nodes and edges to show relationships (e.g., Neo4j).

2. **Schema Rigidity**

   * **SQL Databases**: Require the schema to be defined before data can be inserted. Changing the schema (like adding a
   new column) later can be complex and sometimes requires taking the database offline.
   * **NoSQL Databases**: Have a dynamic schema, or are "schema-less." This flexibility allows developers to store
   unstructured or semi-structured data and easily iterate on their application without needing to update the database
   schema every time a data field changes.

3. **Scalability**

   * **SQL Databases**: Primarily scale vertically. You improve performance by getting a more powerful server (more CPU,
   RAM, disk space). This can hit a hardware limit and is expensive.
   * **NoSQL Databases**: Primarily scale horizontally. You improve performance by adding more servers to the cluster
   (sharding). This approach is generally cheaper and allows for massive scaling to handle very large data volumes and
   user traffic (Big Data).

4. **ACID Compliance (Data Integrity)**

   * **SQL Databases**: Strongly adhere to the ACID properties (Atomicity, Consistency, Isolation, Durability), making
   them ideal for applications where data integrity is critical, such as financial transactions (e.g., banking systems).
   * **NoSQL Databases**: Often sacrifice some ACID compliance (specifically consistency and isolation) in favor of
   availability and faster performance (following the CAP theorem). They often use a concept called "eventual
   consistency," where data across all servers will eventually become consistent, but there might be a short delay after
   a write operation.

### When to Choose Which?

* **Choose SQL when**: Your data is highly structured, relationships between data are critical, you need high data
consistency and integrity (ACID compliance), and the data volume is predictable or scaling vertically is feasible.
* **Choose NoSQL when**: You are handling large volumes of unstructured or semi-structured data, the schema needs to be
flexible and dynamic, you require massive horizontal scaling, and ultra-high availability and rapid performance are
prioritized over strict ACID consistency. 

## Locking and Locks

MySQL provides locking mechanisms to manage concurrent access to data, ensuring data integrity and consistency,
especially in multi-user environments.

### Types of Locks

* Table Locks: These locks affect the entire table. 
  * READ Lock (Shared Lock): Allows multiple sessions to read from the table concurrently, but no session can write to it.
  * WRITE Lock (Exclusive Lock): Allows only the session holding the lock to read and write to the table; other sessions
  cannot read or write. 
* Row Locks: These locks affect specific rows within a table (primarily used by InnoDB storage engine).
  * Shared (S) Lock: Allows multiple transactions to read a row.
  * Exclusive (X) Lock: Allows only one transaction to update or delete a row. 
* Intention Locks: These are table-level locks that indicate a transaction's intention to set row-level locks.
  * Intention Shared (IS) Lock: Indicates a transaction intends to set shared (S) locks on individual rows. 
  * Intention Exclusive (IX) Lock: Indicates a transaction intends to set exclusive (X) locks on individual rows.
* Gap Locks: Locks on a range of index records or the space between them, used in REPEATABLE READ isolation level to
prevent phantom reads. 

### Locking Statements

* `LOCK TABLES table_name READ/WRITE;`: Explicitly acquires a table lock.
* `UNLOCK TABLES;`: Releases all table locks held by the current session.
* `SELECT ... FOR SHARE;`: Acquires shared (S) locks on selected rows within a transaction.
* `SELECT ... FOR UPDATE;`: Acquires exclusive (X) locks on selected rows within a transaction.
* `GET_LOCK('lock_name', timeout);`: Acquires an advisory lock with a specified name and timeout.
* `RELEASE_LOCK('lock_name');`: Releases an advisory lock. 

### Purpose of Locking

* **Concurrency Control**: Prevents data inconsistencies when multiple users or processes access and modify the same
data simultaneously.
* **Data Integrity**: Ensures that transactions complete in an isolated manner, preventing partial or incorrect data
modifications.
* **Preventing Race Conditions**: Ensures that operations requiring exclusive access to data are handled sequentially. 

### Considerations

* **Deadlocks**: Occur when two or more transactions are waiting for each other to release locks, leading to a
standstill. MySQL detects and resolves deadlocks by rolling back one of the transactions.
* **Performance Impact**: Excessive or poorly managed locking can lead to performance bottlenecks by reducing
concurrency.
* **Privileges**: Users require LOCK TABLES and SELECT privileges to use table locking.


## Consistency Table

The concept of a "consistency table" is not a standard, recognized term in the general context of database systems like
MySQL or MongoDB. The term "consistency" in databases, especially when comparing relational databases like MySQL and
NoSQL databases like MongoDB, refers to how data accuracy and integrity are maintained across the system, particularly
in the face of concurrent operations or distributed environments.

**Here's how consistency is understood in relation to these databases:**


1. **Consistency in Relational Databases (like MySQL)**:

   * MySQL, as an ACID-compliant (Atomicity, Consistency, Isolation, Durability) database, emphasizes strong consistency.
   * Consistency (ACID): This property ensures that any database transaction must move the database from one valid state
   to another. It enforces all defined rules, constraints (like foreign key constraints), triggers, and cascades,
   ensuring data integrity.
   * The use of tables, with their predefined schemas and relationships, is fundamental to achieving this strong
   consistency. Data types, primary keys, and foreign keys all contribute to maintaining data integrity within and
   between tables.

2. **Consistency in NoSQL Databases (like MongoDB)**:

   * MongoDB, a NoSQL document database, often prioritizes availability and partition tolerance over immediate strong
   consistency (following the CAP theorem). It typically uses eventual consistency.
   * Eventual Consistency: This model means that after a write operation, the data will eventually be consistent across
   all replicas, but there might be a short period where different replicas hold different versions of the data.
   * Causal Consistency: MongoDB also offers causal consistency, which provides stronger guarantees within a session,
   ensuring that reads reflect prior writes within that session, even across different nodes in a replica set.
   * While MongoDB doesn't use the concept of "tables" in the same way as relational databases (it uses collections of
   documents), the principles of read and write concerns and replica sets are crucial for managing data consistency in a
   distributed environment.

**In summary:**

There is no specific entity called a "consistency table" in either MySQL or MongoDB. Instead, "consistency" refers to a
set of rules and mechanisms that ensure data accuracy and integrity within the database system. MySQL achieves this
through its ACID properties and structured tables, while MongoDB manages consistency through its replica sets,
read/write concerns, and different consistency models like eventual and causal consistency.


## Sharding and Replication

Sharding splits a database into smaller, distributed pieces called shards to improve write scalability and handle
massive datasets. Replication creates identical copies of data across multiple servers to improve read performance,
availability, and fault tolerance.

### Sharding

* **What it is**: Dividing a single dataset into smaller, separate chunks (shards), where each shard contains a unique
subset of the data.
* **How it works**: Each shard can be hosted on a different machine, allowing for the distribution of data and
processing across multiple servers.
* **Key benefit**: Improves performance and scalability for write-heavy workloads by distributing the data and query
load across multiple machines, enabling a database to grow beyond the capacity of a single server.

### Replication

* **What it is**: Creating and maintaining identical copies of the same database across different servers or nodes.
* **How it works**: A "master" database handles writes, and its changes are copied to one or more "slave" databases,
which handle reads.
* **Key benefits**:
  * **High availability**: If the master database fails, a replica can be promoted to take over, minimizing downtime.
  * **Read scaling**: Distributes read traffic across multiple replicas, which improves overall read performance.

**How they work together**

Sharding and replication are often used together in large-scale systems. For example, a system might use sharding to
split the data across several servers and then use replication within each shard to ensure that each shard is highly
available and can handle read requests efficiently.



# JS


## OOP in JS and How it Differs from PHP

In JavaScript, OOP is a programming paradigm that uses a prototype-based inheritance model, though modern JS (ES6+) also
offers a class syntax that serves as "syntactic sugar" over the underlying prototypal system. PHP, in contrast, uses a
more traditional and stricter class-based inheritance system, similar to languages like Java.

### OOP in JavaScript

* **Prototypal Inheritance**: At its core, JavaScript's inheritance works by linking objects to a "prototype" object. If
a property or method is not found on an object, the lookup is delegated to its prototype, and so on up a "prototype
chain".
* **Flexible and Dynamic**: This approach makes JavaScript objects very dynamic. New properties and methods can be added
or removed from an object at runtime.
* **Classes as Syntax Sugar**: The class keyword introduced in ES6 provides a cleaner, more familiar syntax for
implementing OOP, but it still operates on the same prototype-based mechanism under the hood.
* **Encapsulation**: JavaScript's encapsulation is less strict than PHP's. While modern JS has the # prefix for private
class fields, older methods relied on closures and conventions to achieve privacy. 

### OOP in PHP

* **Class-Based Inheritance**: PHP's OOP is based on classes and objects, where a class is a blueprint for creating objects. Objects inherit properties and behaviors from their parent classes.
* **Stricter Encapsulation**: PHP offers explicit access modifiers (public, protected, and private) that enforce stricter encapsulation rules. This prevents outside code from accessing or modifying internal properties directly.
* **Direct Database Access**: Unlike JavaScript, which often requires a server environment like Node.js to access a database, PHP can directly access and interact with databases.
* **Static vs. Dynamic**: PHP objects are less dynamic than JavaScript's. You define the structure of a class and its objects statically, and it's not as simple to add or remove properties at runtime. 

**Key differences summarized**

| Feature              | JavaScript (ES6+)                                                           | PHP                                                              |
|----------------------|-----------------------------------------------------------------------------|------------------------------------------------------------------|
| Inheritance          | Prototypal (uses prototype chains)                                          | Class-based (uses blueprints)                                    |
| Class Syntax         | Uses class syntax, but it's syntactic sugar over prototypes                 | Uses explicit class definitions                                  |
| Encapsulation        | Achieved with closures or # for private fields                              | Enforced with public, private, and protected keywords            |
| Runtime Flexibility	 | Highly dynamic; properties can be added/removed at runtime	                 | Less dynamic; class structure is generally fixed at compile time |
| Purpose	             | Often used for client-side scripting, though Node.js allows server-side use | Primarily used for server-side scripting                         |





# Architecture and Clean Code

## SOLID

The SOLID principles are five essential guidelines in object-oriented programming that help developers create software
that is easier to maintain, understand, and scale over time.

Here is a simple explanation of each principle:

**S: Single Responsibility Principle (SRP)**

A class should have only one reason to change. This means each class should have a single, well-defined job or purpose.

* **Simply put**: Do one job, and do it well. For example, a class responsible for generating a report should not also
be responsible for saving it to a database or sending an email; those tasks should be in separate classes. 

**O: Open/Closed Principle (OCP)**

Software entities (classes, modules, functions, etc.) should be open for extension but closed for modification. You
should be able to add new behavior without changing the existing, stable code.

* **Simply put**: You can add new features by creating new classes that extend existing ones, rather than changing the
source code of the original classes. This is often achieved using interfaces or abstract classes. 

**L: Liskov Substitution Principle (LSP)**

Subclasses should be substitutable for their base (parent) classes without breaking the program. This means that any
behavior expected from the parent class must also be provided by the subclass.

* **Simply put**: If you have a function that accepts a Vehicle object, it should work correctly if you pass in a Car or
a Truck object (which are subclasses of Vehicle) without encountering unexpected errors. 

**I: Interface Segregation Principle (ISP)**

Clients should not be forced to depend on interfaces they do not use. It's better to have many small, specific
interfaces than one large, general-purpose ("god") interface.

* **Simply put**: Don't make a class implement methods it doesn't need. If an interface has too many methods, break it
down into smaller, role-specific interfaces. 

**D: Dependency Inversion Principle (DIP)**

High-level modules should not depend on low-level modules; both should depend on abstractions (interfaces or abstract
classes). Abstractions should not depend on details; details should depend on abstractions.

* **Simply put**: Your core business logic shouldn't rely directly on concrete implementations like a specific database
driver. Instead, it should rely on an interface, and the specific database driver will implement that interface. This
allows you to easily switch implementations (e.g., from SQL to NoSQL) without affecting the high-level logic. 

## GraphQL and REST

GraphQL is a query language for APIs that allows clients to request exactly the data they need, while REST
(Representational State Transfer) is an architectural style that uses multiple endpoints and standard HTTP methods to
access resources. *The key differences are that GraphQL uses a single endpoint for all queries, fetches only the
requested data to avoid over-fetching, and is strongly typed, whereas REST uses multiple URLs for different resources,
can lead to over- or under-fetching of data, and relies on HTTP status codes for errors*.

### GraphQL

* **Architecture**: A query language and server-side runtime for APIs.
* **Endpoints**: Uses a single endpoint for all requests, usually at a URL like /graphql.
* **Data Fetching**: Clients specify exactly what data they need, and the server returns only that data. This avoids
over-fetching and under-fetching.
* **Data Structure**: The client defines the structure of the response in the query.
* **Typing**: Strongly typed via a schema, which enforces data structure and validation.
* **Complexity**: Can have a more complex server-side implementation and caching strategy. 

### REST

* **Architecture**: An architectural style for building web services that use standard HTTP methods (GET, POST, PUT,
DELETE).
* **Endpoints**: Uses multiple endpoints, with each endpoint typically representing a specific resource (e.g., /users,
/posts).
* **Data Fetching**: Each endpoint returns a fixed structure of data. This can lead to over-fetching (getting more data
than needed) or under-fetching (needing to make multiple requests for related data).
* **Data Structure**: The server defines the structure of the response for each endpoint.
* **Typing**: Weakly typed; schema enforcement is not built-in.
* **Complexity**: Generally simpler to implement and understand, and benefits from built-in HTTP caching. 


## Is REST Stateless?

Yes, a core architectural constraint of the REST (Representational State Transfer) style is that it must be stateless.

This means the server does not store any client-specific session data or context between requests. Each request from the
client to the server must be entirely self-contained.

**What "Stateless" Means in Practice:**

* **Every Request is Independent**: The server treats every request as a new, isolated request, without relying on
information from any previous interactions.
* **Client Manages Session State**: All necessary information to process a request (such as authentication tokens, user
ID, or shopping cart items) must be included within the request itself (e.g., in headers, the URL, or the body). The
client is responsible for storing and managing its own application state.
* **No Server-Side Sessions**: The server does not use server-side sessions to "remember" who the client is or what they
were doing previously. 

**Benefits of Statelessness:**

* **Scalability**: Because any server can handle any request at any time, it's easy to scale a stateless API
horizontally by adding more servers behind a load balancer. There is no need to synchronize session data between servers.
* **Reliability & Fault Tolerance**: If a server fails during an interaction, another server can simply pick up the next
request without losing any context, as all information is in the request.
* **Simplicity**: The server logic is simplified because it doesn't need complex mechanisms to manage and clean up
session data for potentially millions of concurrent users. 

**How Authentication Works:**

Even though the API is stateless, it still needs to manage authentication. This is typically done by having the client
send credentials (like a JWT token or API key) with every single request that accesses protected resources. The server
validates this token independently for each request.

In essence, a system that maintains server-side session state violates the fundamental principles of REST architecture
and would not be considered truly "RESTful".


## Idempotency

In a REST API, **idempotency** is the property of an operation where executing the same request multiple times has the
*same effect on the server's state as executing it just once*.

It is a crucial concept for building reliable and fault-tolerant APIs, especially in distributed systems where network
issues or timeouts might cause clients to retry the same request multiple times.

### Key Characteristics

* **Consistent State**: No matter how many identical requests are sent, the final state of the server remains the same
after the first successful request is processed.
* **Handling Retries Gracefully**: Idempotency ensures that retrying a request (e.g., due to a network error) does not
lead to unintended side effects like creating duplicate records or double-charging a customer.
* **Response Codes May Differ**: The server's response might be different on subsequent calls (e.g., the first `DELETE`
might return `200 OK`, while subsequent ones return `404 Not Found` because the resource is already gone), but the
server state remains consistently "deleted". 

### Idempotent vs Non-Idempotent HTTP Methods

By convention, certain standard HTTP methods are defined as idempotent, while others are not:

| Method         |        Idempotent?	        | Explanation and Example                                                                                                                                                                                           |
|:---------------|:--------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| GET	           |            Yes	            | Retrieving data multiple times doesn't change the data on the server.                                                                                                                                             |
| HEAD	          |            Yes	            | Similar to GET, but only retrieves headers; no server state change.                                                                                                                                               |
| OPTIONS	       |            Yes	            | Retrieves supported HTTP methods; no server state change.                                                                                                                                                         |
| TRACE	         |            Yes	            | Echoes the received request for diagnostic purposes; no server state change.                                                                                                                                      |
| PUT	           |            Yes	            | Updates or replaces a resource entirely. Sending the same PUT request repeatedly just overwrites the resource with the same data.                                                                                 |
| DELETE	        |            Yes	            | Deleting a resource multiple times has the same final result: the resource is gone.                                                                                                                               |
| POST	          |            No	             | Typically used to create a new resource. Repeating a POST request usually creates multiple, distinct resources (e.g., multiple orders, multiple user accounts).                                                   |
| PATCH	         |            No	             | Used to apply partial modifications. Unless specifically implemented with safeguards (like an idempotency key), repeating a PATCH might apply the same modification multiple times, leading to different results. |

**Implementing Idempotency for `POST` requests**

For critical operations like payments (which typically use `POST`), developers often add a mechanism called an
idempotency key (e.g., a unique UUID in a request header) to ensure safety. The server uses this key to check if a
request with that same key has already been processed, and if so, returns the original response without executing the
action again.


## Resilience Patterns

Resilience patterns are software architecture techniques that prevent cascading failures, ensure functionality during
outages, and improve reliability. Key patterns include the **circuit breaker** (stops requests to a failing service),
**retry** (re-executes failed operations), **bulkhead** (isolates resources to prevent one failure from affecting others),
and **timeout** (limits wait time for a response). These patterns help applications remain stable and responsive in the
face of failures.

### Key resilience patterns

* **Circuit Breaker**: Monitors calls to a service and, if failures exceed a threshold, "trips" to stop further requests
for a period, allowing the service time to recover.
* **Retry**: Automatically retries a failed operation, which is useful for transient failures like temporary network
issues. It should be configured with parameters like the number of retries, backoff intervals, and jitter.
* **Bulkhead**: Isolates components or services into separate resource pools. This prevents a failure in one part of the
system from consuming all available resources and impacting other, unaffected parts.
* **Timeout**: Places a limit on how long a system will wait for a response from another service or operation. If the
operation exceeds the timeout, it is aborted to prevent resource exhaustion.
* **Fallback**: Provides a secondary response or action to take when a primary operation fails. This can be returning a
cached value, a default response, or a simplified version of the service's functionality.
* **Rate Limiting**: Controls the number of requests a service receives over a specific time period to prevent it from
being overwhelmed by traffic spikes. 

### Benefits of using resilience patterns

* **Prevent cascading failures**: One service failure doesn't bring down the entire system.
* **Improve reliability**: The application can continue to function, even with partial failures.
* **Enhance user experience**: Reduces downtime and keeps the application responsive for users.
* **Increase fault tolerance**: Builds more robust and stable applications. 


## Eventual Consistency

Eventual consistency is a model in microservices where data may not be immediately consistent across all services, but
will become consistent over time. It is a trade-off that prioritizes system availability and partition tolerance over
immediate, strong consistency, making it suitable for applications where users can tolerate slight delays in data
synchronization. This is achieved through asynchronous communication, often using patterns like Sagas or an event-driven
architecture, where services update their local data and communicate changes to other services asynchronously.

### How it works

* **Asynchronous communication**: Services update their own data locally without waiting for a response from other
services.
* **Event propagation**: After a local update, the service publishes an event (or message) to an event broker.
* **Data synchronization**: Other services that are interested in the change listen to the event broker and update their
local data accordingly.
* **Time to consistency**: While the data is inconsistent during the brief period before all interested services are
updated, the system guarantees that, given enough time and no new updates, all services will eventually have the same
data. 

### Key characteristics

* **High availability**: The system remains available for users even if some services are temporarily down or
experiencing network issues, as they can continue to process requests and catch up later.
* **Partition tolerance**: It can function even if the network is divided, allowing different parts of the system to
work independently for a time.
* **BASE model**: Eventual consistency is a component of the BASE (Basically Available, Soft state, Eventual
consistency) model, which prioritizes availability over the ACID model's strict consistency.
* **Complex error handling**: Developers are responsible for handling potential conflicts that arise from the temporary
inconsistencies, often using techniques like compensating actions to roll back transactions if needed. 

**Examples**

A social media feed where a new post might take a few seconds to appear for all users. An e-commerce order where the
payment service and the inventory service update at different times, but the system eventually reconciles the stock
levels. Online reservation platforms for flights or hotels, where a booking may appear available for a very short window
before being confirmed across all services. 


## Is Async Code faster than Blocking code?

Asynchronous (async) code is not inherently "faster" than blocking (synchronous) code in terms of raw execution speed
for a single, isolated operation. In fact, there can be a small overhead associated with setting up asynchronous
operations. However, async code offers significant advantages in scalability and responsiveness, particularly in
scenarios involving I/O-bound operations (like network requests, database queries, or file operations) or when handling
many concurrent tasks.

*Here's why async code is often preferred and can lead to better overall performance in many applications*:

* **Non-blocking I/O**: When a blocking operation occurs (e.g., waiting for a server response), the entire thread is
halted. Async code, on the other hand, allows the program to initiate an I/O operation and then continue processing
other tasks while waiting for the I/O to complete. This prevents the application from becoming unresponsive and allows
it to handle multiple requests concurrently with fewer resources.
* **Improved resource utilization**: Blocking operations can tie up threads unnecessarily, especially in environments
with limited thread pools (like web servers). Async code allows a single thread to manage multiple concurrent I/O
operations, leading to more efficient use of system resources and potentially supporting a higher volume of concurrent
users or requests.
* **Reduced context switching overhead**: While multithreading can also achieve concurrency, switching between threads
(context switching) has a performance cost. Async programming, particularly with event loops, can manage concurrency
without relying on frequent thread context switches, which can be more efficient for I/O-bound workloads. 

*In summary*:

* For CPU-bound tasks (heavy computations), synchronous code or traditional multithreading might be more straightforward
and potentially faster for a single operation due to the overhead of async mechanisms.
* For I/O-bound tasks and high concurrency scenarios, async code excels by maximizing resource utilization and
preventing blocking, leading to significantly better overall application performance and responsiveness.


## Consensus in microservices

In microservices, consensus is a process where multiple independent nodes in a distributed system agree on a single,
consistent state, even if some nodes fail or messages are lost. It ensures all parts of the system have the same view of
data by using algorithms like **Raft** or **Paxos**, which typically involve electing a leader and replicating logs of
changes to ensure reliability and fault tolerance.

### How it works

* **Agreement on state**: Consensus algorithms are crucial for making sure a cluster of services can agree on a single
value or the current state of the system.
* **Fault tolerance**: They are designed to function correctly even when nodes fail or network communication is
unreliable.
* **Leader election**: Many algorithms, like Raft, first elect a single leader. This leader is responsible for
coordinating changes and propagating them to follower nodes to maintain consistency.
* **Log replication**: The leader maintains a log of all state changes. It replicates this log to the follower nodes.
Once a majority of nodes acknowledge the log, the changes are considered committed and applied consistently across the
cluster.
* **Safety guarantees**: Consensus provides two main guarantees: a safety guarantee ensures that all nodes agree on the
same value and no conflicting decisions are made, while a liveness guarantee ensures that a decision is eventually
reached. 

### Why it's important in microservices

* **Data consistency**: It prevents different parts of the system from having conflicting views of the data, which is
essential for reliability and correct operation.
* **State management**: It is used in coordination and state management, such as in orchestrators like Docker Swarm.
* **System stability**: It ensures the system continues to operate correctly and consistently, even if some components
fail. 

### Practical considerations

* **Sidestepping the problem**: Some microservice architectures try to minimize the need for complex consensus by
avoiding shared state among services, instead pushing shared state to external databases or container orchestrators like
Kubernetes.
* **Complexity**: Implementing a correct consensus algorithm is a complex task, so many developers prefer to use systems
that have already solved the problem for them. 


## Raft and Paxos

When implementing distributed consensus in a microservices architecture, both Raft and Paxos algorithms are viable
options, though Raft is generally favored for its understandability and ease of implementation.

### Raft

* **Understandability**: Raft was designed with understandability as a primary goal, making it easier to grasp and
implement correctly compared to Paxos.
* **Leader-based approach**: Raft simplifies the consensus process by relying on a strong leader to manage log
replication and ensure consistency.
* **Widespread adoption**: Raft is widely used in modern distributed systems and technologies like etcd, Consul, and
TiDB, indicating its proven reliability and performance. 

### Paxos

* **Complexity**: Paxos is known for its complexity, making it challenging to understand and implement correctly, which
can lead to errors and performance issues.
* **Flexibility**: While more complex, Paxos offers more flexibility in certain scenarios, such as allowing any server
to become a leader and handling log replication in a more nuanced way.
* **Foundational influence**: Paxos has significantly influenced the field of distributed consensus and served as a
basis for other algorithms, including Raft. 

### Choosing between Raft and Paxos in microservices

* **Raft** is generally recommended for its simplicity, ease of implementation, and widespread adoption, making it a
practical choice for most microservices architectures requiring distributed consensus.
* **Paxos** may be considered in highly specialized scenarios where its unique features or optimizations are critical,
and the development team possesses deep expertise in distributed systems. 

Ultimately, the choice depends on the specific project requirements, the team's familiarity with distributed consensus
algorithms, and the trade-offs between complexity, understandability, and performance.


## Round Robin algorithm in microservices

In microservices, "round robin" is a load balancing algorithm that distributes incoming requests to each available
service instance in a sequential, cyclical order to ensure an even distribution of traffic. It is a simple and effective
method for ensuring that no single instance becomes overloaded and is best suited for environments with servers of
similar capabilities.

### How it works

A load balancer, which can be a dedicated tool like NGINX or a component of a service mesh, receives incoming client
requests. It maintains a list of healthy, available service instances. It sends the first request to the first instance
in the list, the second request to the second instance, and so on. Once it reaches the last instance, it cycles back to
the beginning of the list for the next request, repeating the process indefinitely. 

### Example

* Request 1: Sent to Server A
* Request 2: Sent to Server B
* Request 3: Sent to Server C
* Request 4: Sent back to Server A 

### When to use it

* It is ideal when all service instances have similar computing power and storage capacity.
* It's a good choice when you need a straightforward way to balance load and ensure high availability. 

### Alternatives

For more complex environments, other algorithms may be more suitable, such as:
* Least Connections: Routes requests to the instance with the fewest active connections.
* Weighted Round Robin: Assigns weights to instances, so a more powerful server handles more traffic.
* IP Hashing: Directs a client to the same instance for the duration of their session, which is useful for stateful
applications. 



# Other


## Hashing vs Encryption vs Encoding

The difference between hashing, encryption, and encoding centers on their purpose, how they transform data, and whether
the process is reversible and requires a secret key.
 
| **Variation** | **Purpose**	                    | **Reversible?** | **Requires a Key?**	 | **Main Function** |
|---------------|---------------------------------|-----------------|----------------------|-------------------|
| Hashing	      | Verify data integrity/passwords | 	No (One-way)	  | No	                  | Verification      |
| Encryption	   | Protect confidentiality	        | Yes (Two-way)	  | Yes	                 | Protection        |
| Encoding      | 	Data compatibility/formatting	 | Yes (Two-way)	  | No	                  | Formatting        |

1. **Hashing (One-Way Transformation)**
    Hashing takes data of any size and transforms it into a fixed-length string of characters called a hash, message
    digest, or fingerprint. 

    * **Key Feature**: The process is a one-way function; it is computationally infeasible to reverse a hash to
    determine the original input data.
    * **Purpose**: To verify that data has not been tampered with or to store passwords securely. You don't need to
    decrypt a password; you just hash the input and compare the hash values.
    * **Examples**: SHA-256, MD5. 

2. **Encryption (Two-Way with a Key)**
    Encryption is the process of converting readable data (plaintext) into an unreadable form (ciphertext) to protect
    its confidentiality. 

    * **Key Feature**: It is a two-way process that requires a secret key. The same key (symmetric encryption) or a
    different but related key (asymmetric encryption) is used to decrypt the ciphertext back to the original plaintext.
    * **Purpose**: To ensure that only authorized parties who possess the correct key can access the information.
    * **Examples**: AES, RSA, TLS (used in HTTPS). 

3. **Encoding (Two-Way without a Key)**
    Encoding transforms data into a new format purely for the purpose of ensuring data compatibility across different
    systems or protocols. 

    * **Key Feature**: It is easily reversible without requiring any special key or secret. It is not a security measure.
    * **Purpose**: To format data safely for transmission over systems that might not handle binary or special characters correctly (e.g., sending an image file over an email system designed only for plain text).
    * **Examples**: Base64, URL encoding, ASCII.