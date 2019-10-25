# Week 12 Revision

## Why Process and Tools

- What are some of the characteristics of modern software construction.

  - Shorter iteration cycles

- How does Process help:

  - Manage the complexity, reduces risk and improves quality

- How do Tools help:

  - Automation, reduce human error

- What else do we need:

  - Culture, commitment

  

## Topic 1: SE Processes, Agile

- Why is good SE Process so critical? What does good process manage, reduce, maximise? Explain the Quality Triangle. 

	<details>
	<summary>Show answer</summary>

        SE process is critical because it can:
        1. Reduce risks
        2. Mage complexity
        3. Maximise quality

        Quality triangle: 
        - Increase in one will leads to changes to the others.
	</details>

- What are the main parts of the SE life cycle? What are the main activities in SE? 

	<details>
	<summary>Show answer</summary>

        SE Life cycles:
        1. Requirement gathering
        2. Requirement analysis
        3. Design
        4. Implementation
	5. Testing
        6. Deployment
        7. Management

	</details>

- What are the main SE Processes? Their advantages and disadvantages? 

	<details>
	<summary>Show answer</summary>

        Some of the main process model:
        1. Waterfall (Incremental):
            - Advantage:
                - Easy to follow for new person
                - Suits for large system, plan driven
            - Disadvantage:
                - Hard to change while developing
                - Inflexible and taking 
        2. Agile (Incremental & Iterative):
            - Advantage:
                - Customer involvement
                - Incremental Delivery
                - Focus on customer
                - Adapt change
                - Simplicity
            - Disadvantage:
                - Hard to scale

	</details>

- What are the characteristics of Incremental and Agile methods? How does Agile address the problems of the traditional Waterfall approach? What are its strengths? 

	<details>
	<summary>Show answer</summary>

        Incremental:
         - Reduce the cost of accomodating customer requirements is reduced
         - Easier to get customer feedback on the development work that has been done.
         However incremental has some problem:
           - Process is not visible
           - System structure tends to degrade as new increments added

        Agile:
         - Rapid development and delivery which suits for the businesses
         - Focus on code rather than design
         - Deliver working software quickly
         - Reduce overheads documentation 
	</details>

- How does Scrum work? What are its benefits? How do the task-tracking tools like Trello and JIRA support it? How would you organise a Trello/JIRA board to manage Scrum? 
    
    <details>
	<summary>Show answer</summary>

        Scrum is an Agile's framework (besides scrum there is XP programming)
        but it focus more on the actual iterative development:
        
        Steps to scrum:
        1. Initial phase - outline planning phase
        2. Sprint cycles - where each develops an increment of system
            1. Write user stories
            2. Prepare product backlog
            3. Sprint (Daily Scrum meeting)
            4. Sprint review & retro
        3. Project closure phase wraps up the project.

        With the helps of tools like Trello and JIRA, it can acts as a Task Board
        For the Team member to quickly review what is doing/done and need to be reviewed.

        You would normally organise your Trello with:
         - Product backlog 
         - Sprint Planning 
         - Sprint Backlog 
         - In Progress
         - Under review
         - Done

	</details>

- How are the Scrum team roles and what do they do? Who fills them? 
    <details>
	<summary>Show answer</summary>

        1. Scrum Master
        2. Product Owner
        3. Team Members.

	</details>

- What are the different Scrum meetings and their purpose? 
    <details>
	<summary>Show answer</summary>

        1. Daily Standup meeting
            - Review what each member has done for the previous sprint
            - What will each member do for the next sprint
            - Any difficulties
            - Normally happens 15 mins.
        2. Sprint Planning
            - What works to do for the next sprint
            - Prepare sprint backlog.
            - Identify how much works to be done for the current sprint
            - Normally every 7-30 days
        3. Sprint review meeting
            - After the sprint execution
            - Should have a live demo
            - Product owners reviews commitments made at the Sprint Planning Meeting
            - Declare which items is done
        4. Retrospective meeting
            - The team inspect their behaviour
            - What went well/ bad
            - What they learn.

	</details>


## Topic 2: User stories and backlogs

- User Stories: how are they different to Use Cases? How do they fit with agile development? How do they reduce risk associated with requirements change?
  
    <details>
    <summary>Show answer</summary>        
    
        Use cases: are more for how the system would operate
        User stories: are for how the users would interact with the system.
        
        User stories can reduce risks of requirements changes because it reflects how the users will interact with the system.
    </details>
 
- What are the main parts of a User Story? What does a User Story look like? How are User Stories used? What are characteristics of a good User Story? 

    <details>
    <summary>Show answer</summary>        
    
        Main part:
        - Who is the user?
        - What is the goal?
        - What are the reasons?

        As a [user] I want to [goal] so I can [reason].

        User stories are used to determine the functionalities of the program.

        Characteristic
        - Independent
        - Negotiable
        - Valuable
        - Estimable
        - Small
        - Testable

    </details>

- How are task times/sizes estimated? What is the relationship between User Stories and Backlogs? 
    <details>
    <summary>Show answer</summary>

        User stories are used in Sprint Planning, in order to make relevant product backlog.
        
        From user stories we can extract to todo items with story points.
    </details>

- What is a Definition of Done? What are different possible definitions? 
    <details>
    <summary>Show answer</summary>
    
        Definition of done may vary. But normally it's when the product is shippable.
    </details>

## Topic 3: Version control, Git, Gitflow 

- Why is version control critical (multiple reasons!)? What is version control’s role in modern SE process? 
    <details>
    <summary>Show answer</summary>

        Version controls support developers to:
        - Sharing files between team members
        - Work on the same files at the same time
        - Keep track of what other people are changing
        - Keep log of what changed and why.
        - Work on multiple versions at once
        - Control and manage release.
       
        In SE process, version controls can act as the help for releases.

    </details>

- What is the difference between centralized and distributed Version Systems? What are some advantages of the Distributed model? 
    <details>
    <summary>Show answer</summary>

        In centralised repository:
            - all the clients sharing the same repository.
            Some tools:
                - Concurrent Versioning System (CVS)
                - Subversion (SVN)

            - Network connection is always required to make repository changes.
            - Rquires administrator(s) to manage permissions
            - Very large repository.

        In Distributed repository:
            - Everyone has a local sandbox.
            - Works offline
            - Fast
            - Handles changes well
            - Branching and merging is easy
            - Less management
            Some tools:
                - Git
                - Mercurial
            Advantage over centralised:
                - Offline commit (Faster)
                - Easier to merge

    </details>
  

- What are the main operations in Git and how do they work, esp. clone, commit, merge, push/pull, tag, but also rebase. roll-back?
    <details>
    <summary>Show answer</summary>

        git clone:
            - To clone an existing project
            - git clone <url>
        git commit:
            - To commit a change.
            - Have to do after git add
            - git commit --m "change"
        git push:
            - after commit, you want to push to your branch
            - git push origin your_branch
        git pull:
            - if your remote branch is up-to-date, you want to update your local branch as well
            - git fetch origin your_branch
            - git pull origin your_branch
        git merge:
            - To merge with another branch
            - First you have to checkout to the branch that you want to merge to.
            - And then merge with the branch that you want to merge from.
            - git checkout main_branch
            - git merge sub_branch
        git tag:
            - You can tag the current branch wth some version.
            - git tag <tagname>
            - This will create a local tag, then you need to push with the tag
            - git push origin --tags
            - To list all tag, we use:
            - git tag
        git rebase:
            - normally, git merge will look something like this:
              *-*-*-*-*-*-*-*
                     \*-*-*/
            - Rebase will merge them into the same line: *-*...*-*
            - Git rebase is used when you want to update a branch according to the other

            How to use?
            - For example, I'm developing on feature branch, some one just updated my dev branch.
            - Now I need to update my feature branch according to the new dev branch
            - First, let's pull the latest changes on dev_branch
              - git checkout dev_branch
              - git pull origin dev_branch
            - Okay, now my dev branch is up to date, now i need to update my feature branch according to it.
              - git checkout feature_branch
              - git rebase dev_branch
            - Done, my feature branch is updated according to the dev_branch

            - Now, If I finished the feature branch already and want to merge into dev_branch, how would I do?
              - git checkout dev_branch
              - git rebase feature_branch
            - Done!

            - Demo: https://www.youtube.com/watch?v=f1wnYdLEpgI&t=135s
        git rollback(revert)
            - First you want to check the log to know which state to revert to
              - git reflog
              - git revert <hash>

    </details>

- You should understand how to perform these and some basic “good practice” 
    <details>
    <summary>Show answer</summary>

        Well, based on the assignment, you should understand.
    </details>

- You should understand some issues that might arise and how to resolve them (e.g., conflicts) 
    <details>
    <summary>Show answer</summary>

        Git conflicts happens when there is a conflict on the content. To resolve simply remove the git conflig annotation. Some tools allow you to click and select.
    </details>

- When/how often should you commit/merge/push etc? 
    <details>
    <summary>Show answer</summary>

        Commit,push on features, merge on update
    </details>

- What are good practice workflows, e.g., branch-per-feature, Gitflow? 
    <details>
    <summary>Show answer</summary>

        Master, dev_branch, hot_fix, features, sub_features, deployment
    </details>

- What are their benefits? How do they support CI/CD 
    <details>
    <summary>Show answer</summary>

        Deployment might have some specific configuration on branching. Pushing and commiting, making a pull request will activate CI/CD that makes it continuously check for bugs.
    </details>



## Topic 4: Unit Testing, Logging

- What is Test Driven Development? What are its benefits? 
    <details>
    <summary>Show answer</summary>

            Test Drivin Development is when you write all the test at the first of the development. And then write production code to pass the test.

            Benefits:
            1. Increase the confident of the code quality
            2. Helps the programmer understand the features better
            3. Make it easier to understand requirement
            4. Code maintenance
            5. Facilitate refactoring
            6. Create a low-level regression test
            7. Find bugs early.
    </details>

- What are Mock Objects and what are they used for (multiple reasons)? 
    <details>
    <summary>Show answer</summary>

            Mock object is to mimic the functionality of an actual object. It's used when: 
            - The real object is too hard to create
            - Real object is slow
            - Real object does not exist
    </details>

- What are Java Assertions and what are they used for? 
    <details>
    <summary>Show answer</summary>

            Java assertions is to assert what you believed to be true. What state you think your program should be.
    </details>
- Be prepared to design and write JUnit tests for a simple short program, using @BeforeClass, @Before, etc, testing for Exceptions, etc 
    <details>
    <summary>Show answer</summary>

            Review example in lecture 4.
    </details>
- What is Logging useful for? What sort of information should be logged? What are the basics for using the Java Loggger? In particular, how are Levels used? 
    <details>
    <summary>Show answer</summary>

        Logger has more features to log including specific information such as timestamps.
        Moreover, with logging you can choose to store in a file - as a way to keep records.
        The information you should log normally hard to debug, or just for some quick preview.

        For basic use, see lecture 4-a

        Some of the levels: (from worst to okay)
        - SEVERE
        - WARNING
        - INFO
        - FINE
        - FINER
        - FINEST

    </details>



## Topic 5: Testing and Test/Issue Management 

- What is testing for? How is early testing important? 
    <details>
    <summary>Show answer</summary>

        Testing is to verify that the program operate as required or not. 
        Discover aspects that has not met the requirment

        NOTE: Testing can't prove that there won't be any more bugs. It only can prove that there are bugs!!!

        Early testing is important because we can find bug easier. Thus minimize the cost of fixing.
        
        Cost of fixing:
        - Design: 1x
        - Implementation: 6.5x
        - Testing: 10x
        - Maintenance: 100x
    </details>

- What are the different stages of testing and what are the inputs to them? What is Regression testing and why is it important? 
  
    <details>
    <summary>Show answer</summary>

        We have to make sure that all aspect of the program is tested (1 features - 1 to many tests).
        - First, we need to setup a testing environment / configuration
        - Specify the step to perform the test
        - Categorise the result into pass/fail. (pass for expected result)

        In requirement stage, we plan acceptance test.
        In specification stage, we plan system test
        In design stage, we plan integration test
        In coding stage, we plan unit test

        Regression Testing:
        - All of the tests case that you built are then re-executed to make sure that the existing functionalities work as expected.
    </details>

- What goes into a Test Case description? How/when are users engaged in testing? What are good features of a test case? You should be prepared to design some small number of test cases for a simple application. 
    <details>
    <summary>Show answer</summary>

        - For Managing the test case: at minimum you should include the date-time for the test, the functionality that you tested, and the result weather it's pass or fail.
      
        - For the test case itself: Should be retrieved from user-story. Might include functional requirement as to identify different input values. Must includes all of the steps to test.

        - User engaged in testing in User Testing including Alpha, Beta, Acceptance test.

    </details>

- Why is issue tracking important? What are the different uses for a good bug report? What are the characteristics of a good bug report? You may be required to critique a bug report. 
  
    <details>
    <summary>Show answer</summary>

        Issue tracking acts as a todo list, to track the problems and issues in the software.
        - It acts as a communication tool between QA - Developer, user-developers
        - Keep track of the workflow and assign tasks to people.

        A good bug report needs to include:
        - Reporter
        - Product / version
        - Severity
        - Priority / Urgency
        - Reproducibility
        - Likelihood
        - Steps to Reproduce
        - Crash report/ logs / screenshots / attached files.
    </details>

- What are the different states/stages a bug goes through? How are bugs ranked? How are Severity and Priority measured? 
    <details>
    <summary>Show answer</summary>

        Open:
            - New: When the reporter created a new issue
            - Accepted: When the bug report is in good format
            - Need more information (NMI): Need more information
            - In Progress: The developer is working on it.

        Close: 
            - Invalid: Invalid format of the issue report
            - Will not fix / known shippable: Maybe a feature
            - Fixed: The programmer fixed
            - Verfied Fixed: User verify that the bug is fixed
            - Duplicate: it's duplicate
          
    </details>



## Topic 6: Builds

- Why is semi/automating the build process important? Where are the complexities in build processes? What risks are involved with manual builds? 

- What are the steps in a standard build process? How do build files help us manage dependencies? 

- What is Maven – not details? What are the extra features of Maven over, say, Ant (in general terms)? In particular, how does Maven manage library dependencies and using up-to-date versions? How are lists of dependencies encoded 

  – You do not need to write Maven code but you should know “how it works” at an appropriate (abstract) level 

## Topic 7: Continuous Integration and Delivery 

- What is Continuous Integration (CI)? How does it tie in with Agile process? What problems does it solve / what risks does it reduce? 
- Does CI require an automation framework like Travis or Jenkins? How are Git, Maven, and other tools involved? 
- How does a CI process integrate with the code repository? What role does the branch-per-feature/Gitflow model play in Continuous Delivery? 
- What are some of the essentials rules for practicing CI / CD? – e.g., why can you never go home on a broken build? 
- You will not need to know how to write detailed Travis scripts, but you should know generally what it does and how it works, and generally how it encodes workflow (i.e,. via yaml file) 

## Topic 8: Deployment via containers / Docker 

- Docker and containerization: what is it for, how is it used? 

- Comparison between Docker containers and standard virtualisation: 

  containerisation is more “lightweight” ... why? 

- What is the process for creating a Docker container, in the abstract? (You do not have to remember all Docker commands, although you should remember the main operations; knowing the main commands may help to be precise in describing operations.) 

## Topic 9: Design characteristics, patterns, refactoring 

- What are some of the important design characteristics and what do they mean, esp coherence and coupling? What are the implications? You should be able to recognise these properties in specific designs and be able to suggest how to achieve them in designs (to a simple degree). 
- What are some of the “design smells”, the blocks to reusability, extensibility, modifiability --- don’t memorise them all but know how to describe them and why they are a problem. 
- What are the SOLID principles for? Be prepared to identify why some code violates a SOLID principle and describe a fix. 
- What is Refactoring, why is it important/critical in Agile. You do not have to memorise the catalog of Refactoring operations, but you should be able to recognise an opportunity for application of a simple Refactoring operation. 
- What are Design Patterns and what is their benefit? What are the motivations for some of them --- i.e., what problems do they solve? You should be able to provide some design, even some **simple** code to demonstrate understanding (Observer, Factory Method, Facade, Visitor) 

## Topic 10: NFRs Performance Testing 

- What are Non-Functional Requirements? How do they relate to System Quality? What are the important System Qualities to design for? 
- What do we write NFRs? Why is it critical to be specific and precise?? Be prepared to critique and potentially write NFRs for some of the System Qualities (e.g., Performance/Speed, Reliability, Usability) 
- What is Performance Testing? Why is it critical to success of products? What are the risks of not doing it? What aspects of requirements cover it? 
- What are the aims of performance testing? What are the different sorts of performance testing? What does each one hope to discover/explore? 
- What are some of the steps of doing performance testing? Why does the data used need to be carefully designed? What do we risk if we do not vary the data? 
- Why do we use automated tools to do performance testing? Why is it important to test different Loads? How do we do this? 

## Topic 11: Not examinable

Not examinable

