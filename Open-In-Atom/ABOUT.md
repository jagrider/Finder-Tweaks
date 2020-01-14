# Open-In-Atom

## The App
This tool is a simple Finder addon in the form of an AppleScript App. When clicked, it opens a new Atom window at the current Finder window path.


## Installing

### Step 1: Create the App
1. Open the Automator app
2. `File` -> `New` -> `Application`
3. Under `Actions`, select `Run AppleScript`

![](../Images/1-Automator.png)

4. Paste the code found in [Open-In-Atom.applescript](./Open-In-Atom.applescript)
5. `File` -> `Save` -> Choose a location and name. I named mine `AtomOpenScript.app`.

### Step 2: Update the Icon
Locate the newly created app. You'll notice that by default the icon is the same as Automator. You can try to find an icon online, but I prefer to use the Atom icon for this app as well.

6. Right click the app -> `Get Info`. Do the same for `Atom`.
7. In the info screen for `Atom`, click the icon image in the top left-hand corner. Then, use `CMD+C` to **copy** the icon image.

![](../Images/2-Atom-Info.png)

8. In the info screen for your new App, click the icon image and use `CMD+V` to **paste** the new icon image.
9. Close the info screens.

### Step 3: Add the app to Finder

10. In Finder, go to the location of the app.
11. Hold `CMD` and **drag** the app to the Finder toolbar. Then, drop it once you see the green `plus` symbol. I prefer my Finder addons to be to the left of the search bar.


## Usage
Using the app is very straightforward. While in a Finder window, click the app in the Finder toolbar to launch it. A new Atom window will open in the current directory.


### Notes and Known Issues
- If you use the Multiple Desktops feature, sometimes launching a new Atom window via this app will switch to another Desktop. I am still not certain what causes this to happen, but it is infrequent.
- When running for the first time on macOS Mojave (10.14.0) and later, you may be prompted a one or two times for permission to
  - Access your files, or
  - Execute Atom or Finder
