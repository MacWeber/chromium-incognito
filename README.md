chromium-incognito
==================

Allows to start chromium browser as incognito with a different cookies jar for
each new window.

###### *** The Prefefences file contains settings for the extensions Dreditor and Dhrome


Before First Run
----------------

##### Optional: prepare the settings folder to keep bookmarks, extensions, preferences, etc:

```cd settings/Default```

- Bookmarks:
```ln -s ~/.config/chromium/Default/Bookmarks Bookmarks```

- Extension Rules:
```ln -s ~/.config/chromium/Default/Extension\ Rules Extension\ Rules```

- Extensions:
```ln -s ~/.config/chromium/Default/Extensions Extensions```

Run it!
=======

Just make it executable:

``chmod 755 chromium-incognito.sh``

 and run
 
``./chromium-incognito.sh``

