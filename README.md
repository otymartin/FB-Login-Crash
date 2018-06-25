# FB-Login-Crash
Crashes when logging in with native Facebook app.

#Fix
Make sure your plist has:

`<key>CFBundleTypeRole</key>
			<string>Editor</string>`
