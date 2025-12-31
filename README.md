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

> Sometimes Window pukes out a bunch of errors on this step. If this happens you need a guide who can walk you through changing your group policy settings. and a bunch of other configurations that may be Windows 11 specific. IDK I have never had so many hurdles getting Windows to work.

Our project is built with **Meteor**, a full‑stack JavaScript framework. Most contributors use Windows, so here’s the easiest way to get set up.

#### 1. Install Meteor

Meteor provides a Windows installer:

**Download Meteor for Windows:**  
 https://www.meteor.com/developers/install

if that link fails try https://v2-docs.meteor.com/install.html

I gave up on windows 11 and switched to docker

------

# ⚡ Meteor Loading Strategy: Greedy Loading + Pub/Sub

This project intentionally uses **Meteor’s classic greedy loading model** combined with **explicit pub/sub** for data flow. This approach keeps the app simple, predictable, and easy to reason about without relying on dynamic imports or complex module systems.

------

## What “Greedy Loading” Means

Meteor automatically loads files based on **folder names** and **load order rules**.
 Greedy loading means:

- All files in `client/`, `server/`, and `lib/` load automatically
- No dynamic imports
- No code-splitting
- No lazy loading
- Everything is available immediately at startup

This is ideal for Blaze apps where:

- templates are global
- helpers are global
- collections are global
- pub/sub is explicit
- load order is predictable

------

## Load Order (Greedy Loading Rules)

Meteor loads files in this order:

1. **`lib/`**  
    Shared code that must load early
   - collections
   - global helpers
   - shared utilities
2. **`server/`**  
    Server-only code
   - publications
   - methods
   - startup logic
3. **`client/`**  
    Client-only code
   - Blaze templates
   - event handlers
   - subscriptions
   - client startup
4. **`imports/`**  
    Only loaded when explicitly imported
    (used sparingly in this project)
5. **`public/` and `private/`**  
    Static assets and server-only assets
    (not code)

This ensures a predictable, top‑down load sequence.

------

## Pub/Sub Strategy

This project uses **explicit pub/sub** for all data access.

### Server: Publications

Located in:

```
/server/publications.js
```

Example:

```js
Meteor.publish('tasks.all', function () {
  return Tasks.find({});
});
```

### Client: Subscriptions

Located in:

```
/client/startup.js
```

Example:

```js
Meteor.subscribe('tasks.all');
```

### Why explicit pub/sub?

- Clear data flow
- Easy debugging
- Blaze templates automatically react to published data
- No hidden magic
- No over-fetching from insecure allow/deny rules

------

## Recommended Project Structure

```
/lib
  collections.js        # Shared collections (loads first)
  helpers.js            # Global Blaze helpers

/server
  publications.js       # All Meteor.publish calls
  methods.js            # Meteor.methods
  startup.js            # Server startup logic

/client
  main.html             # Root Blaze template
  main.js               # Client startup + subscriptions
  styles.css            # Global styles
  /templates            # Blaze UI components

/imports                # Optional modular code (used sparingly)

/public                 # Static assets
/private                # Server-only assets
```


----

*Whenever you open a new terminal:*

1. Go to your project folder

   ```bat
   cd C:\Ghub\PlaceTender
   ```

2. Start your Meteor app inside Docker

   ```bat
   docker run -it --rm -p 3000:3000 -v ${PWD}:/app placetender
   ```

3. Open your browser

- http://localhost:3000/
