Echo (ASP) 1.0.0
===

The ASP code for the ASP version of the project

#### Dependencies
- Bootstrap 3.2.0
- Canvas (alpha)
- Flint 1.2.3
- jQuery 1.2.1

### Visual Studio Configuration
Before working on any code, make sure to configure Visual Studio, by doing the following:

1. Open Visual Studio and open website, pointing to the `echo-asp` folder.
2. Go to Tools -> Options...
3. Under Text Editor -> All Languages -> General, make sure "Line numbers" is checked.
4. Under Text Editor -> All Languages -> Tabs, set:
 - Indenting to Block
 - Tab size to 2
 - Indent size to 2
 - Select "Insert spaces"
5. Whenever you add a new item, make sure **Visual C#** (not Visual Basic) is selected.

### Contributing
To contribute, do the following:

1. Go to **_your_ fork** of echo-asp, and click on the green "Pull Request" button.
2. Make sure the **base fork is _your_ fork** and the **head fork is _c410echo/echo-asp_**. Both should have the branch of "master".
3. If you see "There isn't anything to compare.", skip to step 5.
4. Create Pull Request and merge pull request. (The name doesn't matter.)
5. On your local machine, sync.
6. Make any desired changes to the code.
7. Commit all changes.
8. Sync changes from your local machine.
8. Go to **_your_ fork** of echo-asp, and click on the green "Pull Request" button.
9. Make sure the **base fork is _c410echo/echo-asp_ fork** and the **head fork is _your_ fork**. Your fork should be the "master" branch, but **make sure the c410echo/echo-asp branch is _dev_**
10. Create Pull Request, using a title and description which gives an overview of the changes you made. **Do NOT merge.**

### File Tree
Files that don't exist are marked with an asterisk (*)

- admin
 - browse.aspx
 - browse.aspx.cs
 - edit-profile.aspx
 - edit-profile.aspx.cs
 - profile.aspx
 - profile.aspx.cs
 - tag.aspx
 - tag.aspx.cs
 - ticket.aspx
 - ticket.aspx.cs
- App_Code
 - App_Code/TicketDB.xsd
 - App_Code/TicketDB.xss
- bin
- css
 - css/bootstrap.min.css
 - css/canvas.css
 - css/flint.css
 - css/open-sans.css
- etc
 - class-e-moderator.txt
 - class-e-tag.txt
 - class-e-ticket.txt
 - class-edb.txt
 - functions.txt
- js
 - js/bootstrap.min.js
 - js/jquery-2.1.1.min.js
 - js/jquery-migrate-1.2.1.min.js
- .csscomb.json
- .gitignore
- about.aspx
- about.aspx.cs
- contact.aspx
- contact.aspx.cs
- echo.sln (ignored)
- echo.v11.suo (ignored)
- index.aspx
- index.aspx.cs
- LICENSE.md
- login.aspx
- login.aspx.cs
- README.md
- style.css
- template.master
- template.master.cs
- ticket.aspx
- ticket.aspx.cs
- Web.config
- Web.Debug.config
