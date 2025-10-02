# Remove the "Edit in Notepad" Item from context menu
1. Open `regedit` (Win + R)
2. Navigate to `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions` (use `HKEY_CURRENT_USER` to do this for the current user only, rather than system wide)
3. Right-click `Shell Extensions` and then `New > Key`, name it `Blocked`.
4. Right-click `Blocked` and then `New > String Value`, name it `{CA6CC9F1-867A-481E-951E-A28C5E4F01EA}`. No need to assign a value.
5. Restart the computer for the changes to take effect.

# Add arbitrary context menu item
1. Open `regedit` (Win + R)
2. Navigate to `HKEY_CLASSES_ROOT\*\shell`
3. Right-click `shell` and then `New > Key`, name it whatever, i.e. `FooBar`
4. Right-click `FooBar` and then `New > Key`, name it `command`
5. Set the value of `(Default)` inside `command` equal to the command to execute, i.e. `"D:\path\to\file.exe" "%L"`. (%L will get replaced with the absolute path of the filename you right clicked)
6. *Change the text that appears*:  Right-click `FooBar` (NOT `command`) and then `New > String Value`, name it `MUIVerb`, set the value as the text you want in the context menu.
7. *Change the image:* Right-click `FooBar` (NOT `command`) and then `New > String Value`, name it `Icon`, set the value to path of the exe with the icon you want. You can also use a `.ico` file, but not a png or jpeg. (To convert images, open them in IrfanView, choose `File > Save as` and pick `.ico` file type)

In summary:
```
HKEY_CLASSES_ROOT\*\shell
	\FooBar
		MUIVerb = Open with FooBar
		Icon = D:\path\to\foobar.exe
		\command
			(Default) = "D:\path\to\foobar.exe" "%L"
```