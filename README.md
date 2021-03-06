Rescue Mission
==============

Overview
----------
You're going to be building a website like stackoverflow.com for posting questions and answers.
Guiding Questions

    How does Rails compare to Sinatra?

Learning Objectives
----------

    Build a basic Rails app
    Compare Rails to Sinatra
    Practice using Rails routes
    Practice using Rails form helpers
    Practice using Active Record associations

Resources
----------

    Rails Routing from the Outside In
    Rails Form Helpers
    Active Record Query Interface
    Active Record Associations
    Working with Validation Errors
    Displaying Errors in Views


User Stories
----------
Post a Question
----------

As a user
I want to post a question
So that I can receive help from others

Acceptance Criteria

- I must provide a title that is at least 40 characters long
- I must provide a description that is at least 150 characters long
- I must be presented with errors if I fill out the form incorrectly

View All Questions
----------

As a user
I want to view recently posted questions
So that I can help others

Acceptance Criteria

- I must see the title of each question
- I must see questions listed in order, most recently posted first

View a Question's Details
----------

As a user
I want to view a question's details
So that I can effectively understand the question

Acceptance Criteria

- I must be able to get to this page from the questions index
- I must see the question's title
- I must see the question's description

Answering a Question
----------

As a user
I want to answer another user's question
So that I can help them solve their problem

Acceptance Criteria

- I must be on the question detail page
- I must provide a description that is at least 50 characters long
- I must be presented with errors if I fill out the form incorrectly

Viewing a Question's Answers
----------

As a user
I want to view the answers for a question
So that I can learn from the answer

Acceptance Criteria

- I must be on the question detail page
- I must only see answers to the question I'm viewing
- I must see all answers listed in order, most recent last

Editing a Question
----------

As a user
I want to edit a question
So that I can correct any mistakes or add updates

Acceptance Criteria

- I must provide valid information
- I must be presented with errors if I fill out the form incorrectly
- I must be able to get to the edit page from the question details page

Deleting a Question
----------

As a user
I want to delete a question
So that I can delete duplicate questions

Acceptance Criteria

- I must be able delete a question from the question edit page
- I must be able delete a question from the question details page
- All answers associated with the question must also be deleted

Non-core User Stories
----------
Markdown Support
----------

As a user
I want to write my questions and answers with markdown
So I can easily format my questions and answers

Acceptance Criteria

- I can write my questions and answers using markdown syntax
- Questions and answers, when shown, should be the HTML rendered from the
  markdown

Choosing an Answer
----------

As a user
I want to mark an answer as the best answer
So that others can quickly find the answer

Acceptance Criteria

- I must be on the question detail page
- I must be able mark an answer as the best
- I must see the "best" answer above all other answers in the answer list

User Authentication
----------

As a user
I want to sign in
So that my questions and answers can be associated to me

Acceptance Criteria

- I must be able to sign in using either GitHub, Twitter, or Facebook (choose
  one)

User Signs Out
----------

As a user
I want to be able to sign out
So that other users of my computer can't pretend to be me

Acceptance Criteria

- I must be able to sign out from any page

Prevent Users From Editing Other Another User's Questions
----------

As a user
I want to prevent other users from editing my questions
So that malicious users can't mess with my question

Acceptance Criteria

- I must be signed in
- I must be able to edit a question that I posted
- I can't edit a question that was posted by another user

Prevent Users Choosing "Best" Answer for Another User's Questions
----------

As a user
I want to prevent other users from choosing the "best" answer for my question
So that malicious users can't mess with my question

Acceptance Criteria

- I must be signed in
- I must be able to choose the "best" answer for a question that I posted
- I can't choose the best answer for a question that was posted by another user

Prevent Users Choosing Deleting Another User's Question
----------

As a user
I want to prevent other users from deleting my question
So that malicious users can't mess with my question

Acceptance Criteria

- I must be signed in
- I must be able to delete a question that I posted
- I can't delete a question that was posted by another user
