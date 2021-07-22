/* override recipe: enable DRM and let me watch videos ***/
   // user_pref("media.gmp-widevinecdm.enabled", true); // 1825 default commented out in user.js v86+
user_pref("media.eme.enabled", true); // 1830

/* override recipe: enable session restore ***/
user_pref("browser.startup.page", 3); // 0102
  // user_pref("browser.privatebrowsing.autostart", false); // 0110 required if you had it set as true
  // user_pref("places.history.enabled", true); // 0862 required if you had it set as false
  // user_pref("browser.sessionstore.privacy_level", 0); // 1021 optional [to restore cookies/formdata]
user_pref("privacy.clearOnShutdown.history", false); // 2803
user_pref("privacy.clearOnShutdown.cookies", true); // 2803 optional
user_pref("privacy.clearOnShutdown.formdata", true); // 2803 optional
user_pref("privacy.cpd.history", false); // 2804 to match when you use Ctrl-Shift-Del
  // user_pref("privacy.cpd.cookies", false); // 2804 optional
  // user_pref("privacy.cpd.formdata", false); // 2804 optional

/* override recipe: FF87+ use ETP Strict mode ***/
user_pref("privacy.firstparty.isolate", false); // 4001
user_pref("network.cookie.cookieBehavior", 5); // 2701
user_pref("browser.contentblocking.category", "strict"); // 2701
  // user_pref("privacy.trackingprotection.enabled", true); // 2710 user.js default
  // user_pref("privacy.trackingprotection.socialtracking.enabled", true); // 2711 user.js default

user_pref("keyword.enabled", true);
user_pref("browser.search.suggest.enabled", true);
user_pref("browser.urlbar.suggest.searches", true);

user_pref("privacy.resistFingerprinting.letterboxing", false);
