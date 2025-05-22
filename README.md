# 💡 GitHub Workflow Guide

This guide explains how to clone a repository, add or update files (including `.bak` and solution files), and push your changes to GitHub.

---

## 📥 Cloning a Repository from GitHub

1. **Open Command Prompt (CMD).**

2. **Navigate to or create your target folder:**
   - If the folder exists:
     ```
     cd "my folder"
     ```
   - If the folder doesn't exist:
     ```
     mkdir "my folder"
     cd "my folder"
     ```

3. **Clone the repository:**
   ```
   git clone https://github.com/hendry0168/sql_sample
   ```
4. When prompted:

   Enter your GitHub email.

   Paste your Personal Access Token (PAT) instead of a password.

   🔑 If you don’t have a PAT, create one at: https://github.com/settings/personal-access-tokens
   Make sure to grant it repo access (read/write).

5. Verify the folder was cloned:

   ```
    dir
   ```


📤 Adding & Committing New Files to GitHub
    Use Windows PowerShell for best compatibility.
1. Open PowerShell and navigate to the project folder:

   ```
    cd "my folder"
   ```
2. Check the current Git status:

   ```
    git status
   ```
   
3. To stage a specific new or modified file (e.g. .sql, .bak, .sln):
   ```
    git add filename.ext
   ```
Example:
   ```
    git add DB_HR_backup.bak
    git add MyProject.sln
   ```

4. To stage an entire folder:

   ```
    git add folder-name/
   ```

5. Confirm the files are staged:

   ```
    git status
   ```

6. Commit the changes with a message:

   ```
    git commit -m "Updated database backup and solution files"
   ```

7. Push the changes to GitHub:

   ```
    git push
   ```
   You may be prompted to log in with your email and PAT.

8. Check your GitHub repository online to confirm the files were uploaded.




📌 Notes
  - Make sure large files (like .bak) do not exceed GitHub's file size limit (100MB). For larger files, consider using Git LFS.

  - Always commit and push regularly to keep your repository updated.

  - Use .gitignore to exclude unnecessary files or folders (like bin, obj, or packages in Visual Studio).
