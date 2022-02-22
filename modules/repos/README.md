# Repos Module
After you've completed the setup as explained [here](../../README.md#installation-and-setup), you can add this module inside of the Polybar config:

```ini
[module/repos]
type=custom/script
exec = ~/path/to/the/script.sh
interval = 180
```
You can also customize this a bit:
- you can change the name (e.g. `[module/repos] -> [module/new-name]`),
- the `exec` path to the script's current location,
- and the `interval`.

### **NOTE:** The GitHub API is rate limited, therefore if you set the interval really low, there is a chance of getting an error.
---
After that, you can add the module to your bar. Please note that if you did change the name, you will have to use the new name when adding the module to your bar.

That's it! You should now see something along the lines of:

![example](screenshots/repos.png)

Note that the output will vary depending on your configuration!