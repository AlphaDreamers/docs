# **Git Workflow Documentation**

## **1. Setting Up Git**

### **1.1. Configure Git for First Use**
Each developer should configure Git with their name and email:
```sh
# Set your username
git config --global user.name "Your Name"

# Set your email
git config --global user.email "your.email@example.com"
```

### **1.2. Verify Configuration**
```sh
git config --list
```

---

## **2. Cloning the Repository**
```sh
git clone https://github.com/YourOrganization/your-repository.git
```

This will create a local copy of the repository.

---

## **3. Branching Strategy**

### **3.1. Main Branches**
- `main` → Production-ready, stable code.
- `develop` → Latest development version.

### **3.2. Feature Branch Workflow**
- Create a new branch for each feature or bug fix:
```sh
git checkout -b feature/your-feature-name
```
- Work on your branch and commit changes:
```sh
git add .
git commit -m "Describe your changes"
```
- Push your branch to the remote repository:
```sh
git push origin feature/your-feature-name
```

### **3.3. Naming Conventions**
- **Features:** `feature/feature-name`
- **Bug Fixes:** `fix/bug-description`
- **Hotfixes:** `hotfix/critical-fix`

---

## **4. Committing Changes**

### **4.1. Writing Good Commit Messages**
A commit message should:
- Be clear and concise.
- Follow this format:
```sh
[Category] Short description

Detailed explanation (if needed).
```
**Examples:**
```sh
[Feature] Implement user authentication
[Fix] Resolve login page UI bug
```

### **4.2. Checking Status**
Before committing, check what has changed:
```sh
git status
```

---

## **5. Pull Requests & Code Reviews**

### **5.1. Creating a Pull Request (PR)**
1. Push your branch to GitHub.
2. Open a pull request (PR) from `feature/your-feature-name` to `develop`.
3. Assign reviewers and wait for feedback.

### **5.2. Merging Pull Requests**
- After approval, merge the PR into `develop`.
- Delete the feature branch after merging.

---

## **6. Keeping Your Branch Updated**

Before working on your branch, ensure it’s updated:
```sh
git checkout develop
git pull origin develop
git checkout feature/your-feature-name
git merge develop
```

If conflicts arise, resolve them and commit changes.

---

## **7. Handling Hotfixes**
For urgent fixes in production:
1. Create a `hotfix` branch from `main`:
```sh
git checkout -b hotfix/urgent-fix main
```
2. Fix the issue, commit, and push.
3. Create a PR to `main`, and after merging, also merge into `develop`.

---

## **8. Best Practices**
✅ **Pull frequently** to stay updated.
✅ **Keep commits small** and focused.
✅ **Write meaningful commit messages**.
✅ **Avoid pushing directly to `main` or `develop`**.
✅ **Use PRs for collaboration and code review**.
✅ **Delete merged branches to keep the repository clean**.

---

## **9. Undoing Changes**

### **9.1. Undo Last Commit (Before Push)**
```sh
git reset --soft HEAD~1
```

### **9.2. Undo Last Commit (After Push)**
```sh
git revert HEAD
```

---

## **10. Managing Remote Repositories**

### **10.1. Adding a Remote Repository**
```sh
git remote add origin https://github.com/YourOrganization/your-repository.git
```

### **10.2. Fetching and Merging Changes**
```sh
git fetch origin
git merge origin/develop
```

### **10.3. Removing a Remote Repository**
```sh
git remote remove origin
```

---

### **End of Documentation**

