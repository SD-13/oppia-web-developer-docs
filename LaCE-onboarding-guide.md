This page will help you solve common queries that you may face while working on LaCE issues. If you do not get a satisfactory explanation from this page, feel free to mention your query in the issue thread that you are working on or else make a discussion regarding this in [Dicussions](https://github.com/oppia/oppia/discussions). If you feel that your query can be a valid addition to this page, then make sure to create a new issue [here](https://github.com/oppia/oppia-web-developer-docs/issues) addressing your question.

For help with tackling specific issues, you can also write a [[debugging doc|Debugging-Docs]] to organize your thoughts, and share it on [GitHub Discussions](https://github.com/oppia/oppia/discussions/categories/q-a-debugging-docs). Doing this will make it easier for others to suggest next steps.

# How to perform common operations on your local server

Please note that, to create a skill or a topic, you will need the Curriculum Admin role. To get this role, navigate to the Admin roles tab (/admin) and assign yourself the correct role from the Roles tab.

| Index | Common Queries   |
| :---: |     :---:        |
| 1.    | [Creating a Topic](#1-creating-a-topic) |
| 2.    | [Creating a Skill](#2-creating-a-skill)|
| 3.    | [Generating data on localhost](#3-generating-data-on-localhost)|
| 4.    | [Creating a classroom](#4-creating-a-classroom)|

## 1. Creating a Topic 
- To create a new topic, we first navigate to the `Topics and Skill Dashboard` and select the `CREATE TOPIC` option. To do so, you can take a look at this [guide](Editor-pages#steps-to-create-a-topicskill)
- A modal will open up with necessary details of the topic that are to be filled such as topic name, topic thumbnail, etc.

![Screenshot of topic modal](images/LaCEOnboardingGuide/topic-modal.png)

- Once this is done, the topic is created and you will be redirected to the topic editor page.

![Screenshot of topic editor](images/LaCEOnboardingGuide/topic-editor.png)

- In the main editor tab, we will be able to see the errors that are preventing the topic from being published.

![Screenshot of topic editor warnings](images/LaCEOnboardingGuide/topic-editor-warnings.png)

- This tab has 4 main sections:
  - Details: Information related to the topic
  - Subtopics section: Subtopics and skills associated with the topic are listed.
  
  ![Screenshot of subtopics section](images/LaCEOnboardingGuide/topic-subtopics-section.png)

  - Diagnostic Tests: Add skills that will be used to generate the diagnostic test that determines whether to recommend this topic to new learners. For a skill to qualify for this, it must have at least 3 questions and be assigned to that topic.
  
  ![Screenshot of diagnostic test section](images/LaCEOnboardingGuide/topic-diagnostic-test-section.png)

  - Canonical stories: In this section, the stories belonging to the topic are listed.
  
  ![Screenshot of canonical stories section](images/LaCEOnboardingGuide/topic-canonical-stories-section.png)
  

## 2. Creating a Skill
  > **_NOTE:_** For a skill to be visible on the practice tab of a topic, it must have at least 10 questions associated with it.
- A skill can be directly created from the topic editor by clicking the `ADD SKILL` button under `Subtopics` section of the topic editor. But in this case, the skill will be automatically assigned to that topic.
- A skill can also be created from the Topic and Skill Dashboard as well but it will not be assigned to any topic.
- On clicking the `ADD SKILL` option a modal will pop up with necessary details of the skill.

![Screenshot of creating a skill](images/LaCEOnboardingGuide/creating-a-skill.png)

- Once this is done, the skill is created and you will be redirected to the skill editor page
- The main skill editor section has the following part:
  - Details
  
  ![Screenshot of skill details section](images/LaCEOnboardingGuide/skill-details-section.png)

  - Worked example

  ![Screenshot of worked examples section](images/LaCEOnboardingGuide/skill-worked-examples-section.png)

  - Misconceptions: Common errors that users may have and their explanations. The creator is given the option to enforce the misconception on all question within the skill as seen in the image below.
 
  ![Screenshot of skill misconceptions section](images/LaCEOnboardingGuide/skill-misconceptions-section.png)

  - Pre-requisite Skills: Skills that are to be completed before attempting the current skill. The prerequisite skills can be filtered by topic, subtopic and by title of the skill.

  ![Screenshot of pre-requisite skill section](images/LaCEOnboardingGuide/skill-pre-requisite-skill-section.png)

  - Rubrics: This section of the skill helps question creators make questions under a certain rubric. 
  
  ![Screenshot of skill rubrics section](images/LaCEOnboardingGuide/skill-rubrics-section.png)

- The questions section lists the questions in the skill:
  - To add a new question, select the `ADD QUESTION` option
  - In the question editor, there are 5 sections:
    - Difficulty
    
    ![Screenshot of question difficulty section](images/LaCEOnboardingGuide/question-difficulty.png)

    - Problem
    
    ![Screenshot of problem section](images/LaCEOnboardingGuide/question-problem.png)

    - Interaction
    
    ![Screenshot of interaction and answers and responses sections](images/LaCEOnboardingGuide/question-interaction-answers-responses.png)

    - Answers and Responses (This section can be seen in the image above)
    - Hints
    
    ![Screenshot of question hint section](images/LaCEOnboardingGuide/question-hint.png)

  - Once all these sections are filled, the question can be saved.
  
  ![Screenshot of clickable save button](images/LaCEOnboardingGuide/question-save-button.png)

## 3. Generating data on localhost
- To generate data, we must first navigate to the admin page.

![Admin-Page](images/LaCEOnboardingGuide/Admin-Page.png)

 We will automatically be redirected to the `ACTIVITIES` tab.
- This tab will have several sections:
- Reload a single exploration: This section has preloaded explorations. These can be loaded onto your local server by clicking the `Reload` button for each of them.

![Activity-Tab](images/LaCEOnboardingGuide/Activity-Tab.png)

  - Generate dummy explorations: Along with the option to generate dummy explorations (with no content), we can also publish a certain number of them.

![Dummy-Exploration](images/LaCEOnboardingGuide/Dummy-Exploration.png)

  - Reload a single collection: This section has preloaded collections.

![Reload-Single-Collection](images/LaCEOnboardingGuide/Reload-Single-collection.png)

  - Load dummy new structures data: This section provides a combination of topics, skills, stories and exploration.

![Dummy-New-Structure-Data](images/LaCEOnboardingGuide/Dummy-New-Structure-Data.png)  

  - Generate dummy skill with questions

![Dummy-Skill-with-Questions](images/LaCEOnboardingGuide/Dummy-Skill-with-question.png)

  - Generate a dummy math classroom

![Dummy-Math-Classroom](images/LaCEOnboardingGuide/Dummy-Math-Classroom.png)

*Note*: If you encounter the error `Server error: 'None Type' object has no attribute 'version'`, do the following steps to fix it.
1. Make sure the user has the release-coordinator role. If not, 
    * Go to the /admin page, and under the Roles tab, assign your username the "release-coordinator" role.
2. Go to the `/release-coordinator page`, and under the MISC tab, click on the `Flush Cache` button.

![Flush-Cache-Button](images/LaCEOnboardingGuide/Flush-Cache-Button.png)

## 4. Creating a Classroom
1. Navigate to the Admin roles tab (/admin)
2. Assign the curriculum admin role to yourself.
3. Creating/Loading a classroom
    - Creating Custom Classroom  
        - Navigate to classroom admin page (/classroom-admin)  
        - Click on "Add New Classroom"  
        ![Add New Classroom](images/classroom/addNewClassroom.png)
        - Add classroom name and URL fragment  
        ![Add classroom name and URL](images/classroom/classroomNameAndUrl.png)
        - Edit classroom details (click on the classroom name tile and then click on the pencil icon).  
        ![Edit math classroom](images/classroom/editMathClassroom.png)
        - Add course details, topic intro, and topic IDs to the classroom.  
        ![Add topic in classroom](images/classroom/addTopicInClassroom.png)
        - [Optional]: Create a dependency graph for the topic i.e., making a topic prerequisite for another topic. The created dependency graph will be a DAG (directed acyclic graph).  

        Or,

    - Creating a Dummy Math Classroom
        - Navigate to the Admin activities tab.
        - Load dummy classroom data.  
        ![Dummy Classroom](images/classroom/dummyClassroom.png)
4. The newly created classroom will be visible in the Home tab of the learner dashboard page or we can directly access the classroom from the link localhost:8181/learn/<classroom_url_fragment>.

