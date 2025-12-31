# Place Tender

vania game
pixel art style 

## Getting Set Up

Before you can be a contributor there are some things you will need. I've done a fair few game jams so there are a few things I explain to people who don't live in programmer land. 



### A. Install Git

Download Git for Windows:
 https://git-scm.com/install/windows

Git helps you download, update, and share the project with your team.

### Basic Git Actions

- **Commit** – Save your work to your own copy of the project.
- **Pull** – Get the latest changes from the team.
- **Push** – Upload your changes so others can see them.

### How It Works in a Group Project

You’ll do your work on your **local copy** of the project. As you make progress, save your changes by creating a **commit**. Each commit needs a short message explaining what you did—write it so future‑you can understand it.

When you're ready to share your work:

1. **Commit** your changes.
2. **Push** them to the online repository.

To stay up to date with the team, regularly **pull** the latest changes.



### B. Install Node.js

Download Node.js here:
 https://nodejs.org/en/download

Node.js is the platform that runs JavaScript outside the browser. It became a popular alternative to traditional web servers like Apache because it’s fast and easy to work with.

### What is npm?

Node Package Manager (**npm**) comes bundled with Node.js. It lets you install reusable packages—small add‑ons that provide extra features for your project.

Browse available packages here:
 https://www.npmjs.com/

Any server running Node.js can use these npm packages.

------

### C. Get Started with GitHub & GitHub Desktop

Your project is stored on **GitHub**, an online platform where teams can share and collaborate on code and files.

#### 1. Create a GitHub Account

Go to https://github.com and make a free account.
 You’ll use this account to access the project and contribute your changes.

#### 2. Install GitHub Desktop

Download GitHub Desktop here:
 https://desktop.github.com/

GitHub Desktop gives you a simple, visual way to work with Git—no command line needed.

#### 3. Clone the Project

Once GitHub Desktop is installed:

1. Open GitHub Desktop
2. Sign in with your GitHub account
3. Click **File → Clone Repository**
4. Choose the project from the list
5. Pick a folder on your computer where the project will be saved

This creates your **local copy** of the project.

#### 4. Make Changes Locally

Open the project folder on your computer and edit files as needed.
 GitHub Desktop will automatically detect your changes.

#### 5. Commit Your Work

When you’re ready to save your progress:

1. Go to GitHub Desktop
2. Review the changed files
3. Write a short message describing what you did
4. Click **Commit to main** (or your branch)

A commit is a snapshot of your work.

#### 6. Push Your Changes

After committing, click **Push origin** to upload your changes to GitHub so the team can see them.

#### 7. Pull Updates from the Team

Before you start working—or anytime you want the latest version—click **Pull origin**.
 This downloads any new changes from your teammates.

### D. Using Meteor on Windows

> Sometimes Window pukes out a bunch of errors on this step. If this happens you need a guide who can walk you through changing your group policy settings.

Our project is built with **Meteor**, a full‑stack JavaScript framework. Most contributors use Windows, so here’s the easiest way to get set up.

#### 1. Install Meteor

Meteor provides a Windows installer:

**Download Meteor for Windows:**  
 https://www.meteor.com/developers/install

Run the installer and follow the prompts. After installation, you’ll be able to use the `meteor` command in PowerShell or Command Prompt.

#### 2. Install Required Tools

Meteor uses Node.js under the hood, but **you don’t need to install Node separately**—Meteor includes its own version.

However, you *should* have:

- **Git** (for version control)
- **GitHub Desktop** (optional, but easier for beginners)

#### 3. Clone the Project

Use GitHub Desktop or Git to download the project to your computer.
 Once cloned, open the project folder in File Explorer.

#### 4. Install Project Dependencies

Open **PowerShell** inside the project folder:

```
meteor npm install
```

This installs all the npm packages the project needs.

#### 5. Run the Project

Still in the project folder, start the development server:

```
meteor
```

Meteor will:

- Start the local server
- Build the app
- Open it in your browser (usually at http://localhost:3000)

#### 6. Making Changes

As you edit files, Meteor automatically reloads the app.
 You don’t need to restart the server unless you install new packages.

#### 7. Adding Packages

Meteor has its own package system, plus npm:

- Meteor packages:

  ```
  meteor add <package-name>
  ```

- npm packages:

  ```
  meteor npm install <package-name>
  ```

#### 8. Common Windows Tips

- If you see permission errors, run PowerShell **as Administrator**.
- Avoid long folder paths—Windows has path length limits.
- If Meteor seems slow, restarting your computer often clears stuck processes.
