[33mcommit 8c19215dbac03d90b1487f0845bee0782b005c73[m
Author: said-ahmed <s.a.koudjeti@gmail.com>
Date:   Mon Jun 23 17:54:59 2014 +0200

    Money update
    
    You have to pay for a yower

[1mdiff --git a/CookieClickerTD.gmx/CookieClickerTD.gmx/CookieClickerTD.project.gmx b/CookieClickerTD.gmx/CookieClickerTD.gmx/CookieClickerTD.project.gmx[m
[1mnew file mode 100644[m
[1mindex 0000000..7fc5cda[m
[1m--- /dev/null[m
[1m+++ b/CookieClickerTD.gmx/CookieClickerTD.gmx/CookieClickerTD.project.gmx[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32m<!--This Document is generated by GameMaker, if you edit it by hand then you do so at your own risk!-->[m
[32m+[m[32m<assets>[m
[32m+[m[32m  <Configs name="configs">[m
[32m+[m[32m    <Config>Configs\Default</Config>[m
[32m+[m[32m  </Configs>[m
[32m+[m[32m  <NewExtensions/>[m
[32m+[m[32m  <sounds name="sound"/>[m
[32m+[m[32m  <sprites name="sprites"/>[m
[32m+[m[32m  <backgrounds name="background"/>[m
[32m+[m[32m  <paths name="paths"/>[m
[32m+[m[32m  <help>[m
[32m+[m[32m    <rtf>help.rtf</rtf>[m
[32m+[m[32m  </help>[m
[32m+[m[32m  <TutorialState>[m
[32m+[m[32m    <IsTutorial>0</IsTutorial>[m
[32m+[m[32m    <TutorialName></TutorialName>[m
[32m+[m[32m    <TutorialPage>0</TutorialPage>[m
[32m+[m[32m  </TutorialState>[m
[32m+[m[32m</assets>[m
[1mdiff --git a/CookieClickerTD.gmx/CookieClickerTD.gmx/configs/Default.config.gmx b/CookieClickerTD.gmx/CookieClickerTD.gmx/configs/Default.config.gmx[m
[1mnew file mode 100644[m
[1mindex 0000000..6cb822d[m
[1m--- /dev/null[m
[1m+++ b/CookieClickerTD.gmx/CookieClickerTD.gmx/configs/Default.config.gmx[m
[36m@@ -0,0 +1,389 @@[m
[32m+[m[32m<!--This Document is generated by GameMaker, if you edit it by hand then you do so at your own risk!-->[m
[32m+[m[32m<Config>[m
[32m+[m[32m  <Options>[m
[32m+[m[32m    <option_aborterrors>false</option_aborterrors>[m
[32m+[m[32m    <option_android_GPU_device>0</option_android_GPU_device>[m
[32m+[m[32m    <option_android_adcolony_enable_V4VC>false</option_android_adcolony_enable_V4VC>[m
[32m+[m[32m    <option_android_advertising_enable>false</option_android_advertising_enable>[m
[32m+[m[32m    <option_android_advertising_key></option_android_advertising_key>[m
[32m+[m[32m    <option_android_advertising_type>MoPub</option_android_advertising_type>[m
[32m+[m[32m    <option_android_amazon_game_circle>false</option_android_amazon_game_circle>[m
[32m+[m[32m    <option_android_amazon_gc_achievements>true</option_android_amazon_gc_achievements>[m
[32m+[m[32m    <option_android_amazon_gc_leaderboards>true</option_android_amazon_gc_leaderboards>[m
[32m+[m[32m    <option_android_amazon_gc_whispersync>false</option_android_amazon_gc_whispersync>[m
[32m+[m[32m    <option_android_amazon_iap>false</option_android_amazon_iap>[m
[32m+[m[32m    <option_android_apk_expansion>false</option_android_apk_expansion>[m
[32m+[m[32m    <option_android_arch_armv5>true</option_android_arch_armv5>[m
[32m+[m[32m    <option_android_arch_armv7>true</option_android_arch_armv7>[m
[32m+[m[32m    <option_android_arch_mips>true</option_android_arch_mips>[m
[32m+[m[32m    <option_android_arch_mipsr2>false</option_android_arch_mipsr2>[m
[32m+[m[32m    <option_android_arch_mipsr2sf>false</option_android_arch_mipsr2sf>[m
[32m+[m[32m    <option_android_arch_x86>true</option_android_arch_x86>[m
[32m+[m[32m    <option_android_build_version>0</option_android_build_version>[m
[32m+[m[32m    <option_android_color_depth>0</option_android_color_depth>[m
[32m+[m[32m    <option_android_display_name>CookieClickerTD</option_android_display_name>[m
[32m+[m[32m    <option_android_flurry_enable>false</option_android_flurry_enable>[m
[32m+[m[32m    <option_android_flurry_id></option_android_flurry_id>[m
[32m+[m[32m    <option_android_google_analytics_enable>false</option_android_google_analytics_enable>[m
[32m+[m[32m    <option_android_google_play>false</option_android_google_play>[m
[32m+[m[32m    <option_android_google_play_id></option_android_google_play_id>[m
[32m+[m[32m    <option_android_google_tracking_id></option_android_google_tracking_id>[m
[32m+[m[32m    <option_android_iap_suppress_toast>false</option_android_iap_suppress_toast>[m
[32m+[m[32m    <option_android_icade_support>true</option_android_icade_support>[m
[32m+[m[32m    <option_android_icon_hdpi>icon_hdpi.png</option_android_icon_hdpi>[m
[32m+[m[32m    <option_android_icon_ldpi>icon_ldpi.png</option_android_icon_ldpi>[m
[32m+[m[32m    <option_android_icon_mdpi>icon_mdpi.png</option_android_icon_mdpi>[m
[32m+[m[32m    <option_android_icon_xhdpi>icon_xhdpi.png</option_android_icon_xhdpi>[m
[32m+[m[32m    <option_android_icon_xxhdpi>icon_xxhdpi.png</option_android_icon_xxhdpi>[m
[32m+[m[32m    <option_android_icon_xxxhdpi>icon_xxxhdpi.png</option_android_icon_xxxhdpi>[m
[32m+[m[32m    <option_android_install_location>auto</option_android_install_location>[m
[32m+[m[32m    <option_android_interpolate>true</option_android_interpolate>[m
[32m+[m[32m    <option_android_licensing_enable>false</option_android_licensing_enable>[m
[32m+[m[32m    <option_android_licensing_key></option_android_licensing_key>[m
[32m+[m[32m    <option_android_major_version>1</option_android_major_version>[m
[32m+[m[32m    <option_android_minor_version>0</option_android_minor_version>[m
[32m+[m[32m    <option_android_orient_landscape>true</option_android_orient_landscape>[m
[32m+[m[32m    <option_android_orient_portrait>true</option_android_orient_portrait>[m
[32m+[m[32m    <option_android_orientation>2</option_android_orientation>[m
[32m+[m[32m    <option_android_ouya_icon>ouyaIcon.png</option_android_ouya_icon>[m
[32m+[m[32m    <option_android_package_company>companyname</option_android_package_company>[m
[32m+[m[32m    <option_android_package_domain>com</option_android_package_domain>[m
[32m+[m[32m    <option_android_package_product>CookieClickerTD</option_android_package_product>[m
[32m+[m[32m    <option_android_permission_flags>8</option_android_permission_flags>[m
[32m+[m[32m    <option_android_pocketchange_enable>false</option_android_pocketchange_enable>[m
[32m+[m[32m    <option_android_pocketchange_id></option_android_pocketchange_id>[m
[32m+[m[32m    <option_android_pocketchange_test_enable>false</option_android_pocketchange_test_enable>[m
[32m+[m[32m    <option_android_push_enable>false</option_android_push_enable>[m
[32m+[m[32m    <option_android_push_id></option_android_push_id>[m
[32m+[m[32m    <option_android_scale>-1</option_android_scale>[m
[32m+[m[32m    <option_android_set_device_id></option_android_set_device_id>[m
[32m+[m[32m    <option_android_splash_png>splash.png</option_android_splash_png>[m
[32m+[m[32m    <option_android_texture_page>1024</option_android_texture_page>[m
[32m+[m[32m    <option_android_use_test_ads>false</option_android_use_test_ads>[m
[32m+[m[32m    <option_argumenterrors>true</option_argumenterrors>[m
[32m+[m[32m    <option_author></option_author>[m
[32m+[m[32m    <option_backimage>nil</option_backimage>[m
[32m+[m[32m    <option_changed>false</option_changed>[m
[32m+[m[32m    <option_changeresolution>false</option_changeresolution>[m
[32m+[m[32m    <option_closeesc>true</option_closeesc>[m
[32m+[m[32m    <option_colordepth>0</option_colordepth>[m
[32m+[m[32m    <option_display_name>GameMaker: Studio</option_display_name>[m
[32m+[m[32m    <option_displayerrors>true</option_displayerrors>[m
[32m+[m[32m    <option_facebook_appid></option_facebook_appid>[m
[32m+[m[32m    <option_facebook_enable>false</option_facebook_enable>[m
[32m+[m[32m    <option_freeze>false</option_freeze>[m
[32m+[m[32m    <option_frequency>0</option_frequency>[m
[32m+[m[32m    <option_frontimage>nil</option_frontimage>[m
[32m+[m[32m    <option_fullscreen>false</option_fullscreen>[m
[32m+[m[32m    <option_gameguid>{693700C4-F229-4DFA-BEA5-8C3B8E29B609}</option_gameguid>[m
[32m+[m[32m    <option_gameid>687855232</option_gameid>[m
[32m+[m[32m    <option_haptic_effects>false</option_haptic_effects>[m
[32m+[m[32m    <option_hasloadimage>false</option_hasloadimage>[m
[32m+[m[32m    <option_helpkey>true</option_helpkey>[m
[32m+[m[32m    <option_html5_CreationEventOrder>true</option_html5_CreationEventOrder>[m
[32m+[m[32m    <option_html5_WebGL>0</option_html5_WebGL>[m
[32m+[m[32m    <option_html5_advertising_enable>false</option_html5_advertising_enable>[m
[32m+[m[32m    <option_html5_advertising_key></option_html5_advertising_key>[m
[32m+[m[32m    <option_html5_advertising_type>Supersonic Ads</option_html5_advertising_type>[m
[32m+[m[32m    <option_html5_allow_fullscreen>true</option_html5_allow_fullscreen>[m
[32m+[m[32m    <option_html5_alwaysreload>false</option_html5_alwaysreload>[m
[32m+[m[32m    <option_html5_centergame>false</option_html5_centergame>[m
[32m+[m[32m    <option_html5_flurry_enable>false</option_html5_flurry_enable>[m
[32m+[m[32m    <option_html5_flurry_id></option_html5_flurry_id>[m
[32m+[m[32m    <option_html5_foldername>html5game</option_html5_foldername>[m
[32m+[m[32m    <option_html5_generate_spotify_app>false</option_html5_generate_spotify_app>[m
[32m+[m[32m    <option_html5_google_analytics_enable>false</option_html5_google_analytics_enable>[m
[32m+[m[32m    <option_html5_google_tracking_id></option_html5_google_tracking_id>[m
[32m+[m[32m    <option_html5_icon>fav.ico</option_html5_icon>[m
[32m+[m[32m    <option_html5_index>-1</option_html5_index>[m
[32m+[m[32m    <option_html5_interpolate>true</option_html5_interpolate>[m
[32m+[m[32m    <option_html5_jsprepend></option_html5_jsprepend>[m
[32m+[m[32m    <option_html5_loadingbar>-1</option_html5_loadingbar>[m
[32m+[m[32m    <option_html5_outputdebugtoconsole>false</option_html5_outputdebugtoconsole>[m
[32m+[m[32m    <option_html5_outputname>index.html</option_html5_outputname>[m
[32m+[m[32m    <option_html5_scale>-1</option_html5_scale>[m
[32m+[m[32m    <option_html5_splash_png>splash.png</option_html5_splash_png>[m
[32m+[m[32m    <option_html5_texture_page>2048</option_html5_texture_page>[m
[32m+[m[32m    <option_html5_use_test_ads>false</option_html5_use_test_ads>[m
[32m+[m[32m    <option_html5_usesplash>false</option_html5_usesplash>[m
[32m+[m[32m    <option_icon>nil</option_icon>[m
[32m+[m[32m    <option_in_app_purchase_enable>false</option_in_app_purchase_enable>[m
[32m+[m[32m    <option_in_app_purchase_sandbox_mode>false</option_in_app_purchase_sandbox_mode>[m
[32m+[m[32m    <option_in_app_purchase_server_url></option_in_app_purchase_server_url>[m
[32m+[m[32m    <option_information></option_information>[m
[32m+[m[32m    <option_interpolate>true</option_interpolate>[m
[32m+[m[32m    <option_ios_adcolony_enable_V4VC>false</option_ios_adcolony_enable_V4VC>[m
[32m+[m[32m    <option_ios_advertising_enable>false</option_ios_advertising_enable>[m
[32m+[m[32m    <option_ios_advertising_key></option_ios_advertising_key>[m
[32m+[m[32m    <option_ios_advertising_type>iAds</option_ios_advertising_type>[m
[32m+[m[32m    <option_ios_app_id></option_ios_app_id>[m
[32m+[m[32m    <option_ios_build_version>0</option_ios_build_version>[m
[32m+[m[32m    <option_ios_certificate></option_ios_certificate>[m
[32m+[m[32m    <option_ios_device_type>3</option_ios_device_type>[m
[32m+[m[32m    <option_ios_display_name>CookieClickerTD</option_ios_display_name>[m
[32m+[m[32m    <option_ios_flurry_enable>false</option_ios_flurry_enable>[m
[32m+[m[32m    <option_ios_flurry_id></option_ios_flurry_id>[m
[32m+[m[32m    <option_ios_google_analytics_enable>false</option_ios_google_analytics_enable>[m
[32m+[m[32m    <option_ios_google_play_id></option_ios_google_play_id>[m
[32m+[m[32m    <option_ios_google_tracking_id></option_ios_google_tracking_id>[m
[32m+[m[32m    <option_ios_icon_114>icon114.png</option_ios_icon_114>[m
[32m+[m[32m    <option_ios_icon_120>icon120.png</option_ios_icon_120>[m
[32m+[m[32m    <option_ios_icon_144>icon144.png</option_ios_icon_144>[m
[32m+[m[32m    <option_ios_icon_152>icon152.png</option_ios_icon_152>[m
[32m+[m[32m    <option_ios_icon_57>icon57.png</option_ios_icon_57>[m
[32m+[m[32m    <option_ios_icon_72>icon72.png</option_ios_icon_72>[m
[32m+[m[32m    <option_ios_icon_76>icon76.png</option_ios_icon_76>[m
[32m+[m[32m    <option_ios_interpolate>true</option_ios_interpolate>[m
[32m+[m[32m    <option_ios_ipad_retina_splash_png>iPadRetinasplash.png</option_ios_ipad_retina_splash_png>[m
[32m+[m[32m    <option_ios_ipad_splash_png>iPadsplash.png</option_ios_ipad_splash_png>[m
[32m+[m[32m    <option_ios_iphone5_splash_png>iPhone5splash.png</option_ios_iphone5_splash_png>[m
[32m+[m[32m    <option_ios_iphone_retina_splash_png>IphoneRetinasplash.png</option_ios_iphone_retina_splash_png>[m
[32m+[m[32m    <option_ios_iphone_splash_png>iPhonesplash.png</option_ios_iphone_splash_png>[m
[32m+[m[32m    <option_ios_major_version>1</option_ios_major_version>[m
[32m+[m[32m    <option_ios_minor_version>0</option_ios_minor_version>[m
[32m+[m[32m    <option_ios_orient_landscape>true</option_ios_orient_landscape>[m
[32m+[m[32m    <option_ios_orient_landscape_right>true</option_ios_orient_landscape_right>[m
[32m+[m[32m    <option_ios_orient_portrait>true</option_ios_orient_portrait>[m
[32m+[m[32m    <option_ios_orient_portrait_upside_down>true</option_ios_orient_portrait_upside_down>[m
[32m+[m[32m    <option_ios_provisioning></option_ios_provisioning>[m
[32m+[m[32m    <option_ios_push_enable>false</option_ios_push_enable>[m
[32m+[m[32m    <option_ios_scale>-1</option_ios_scale>[m
[32m+[m[32m    <option_ios_set_device_id></option_ios_set_device_id>[m
[32m+[m[32m    <option_ios_splash_png>splash.png</option_ios_splash_png>[m
[32m+[m[32m    <option_ios_texture_page>1024</option_ios_texture_page>[m
[32m+[m[32m    <option_ios_use_test_ads>false</option_ios_use_test_ads>[m
[32m+[m[32m    <option_lastchanged></option_lastchanged>[m
[32m+[m[32m    <option_linux_display_name>CookieClickerTD</option_linux_display_name>[m
[32m+[m[32m    <option_linux_enable_steam>false</option_linux_enable_steam>[m
[32m+[m[32m    <option_linux_fullscreen>false</option_linux_fullscreen>[m
[32m+[m[32m    <option_linux_icon>icon64.png</option_linux_icon>[m
[32m+[m[32m    <option_linux_interpolate>true</option_linux_interpolate>[m
[32m+[m[32m    <option_linux_scale>-1</option_linux_scale>[m
[32m+[m[32m    <option_linux_screenkey>true</option_linux_screenkey>[m
[32m+[m[32m    <option_linux_sizeable>false</option_linux_sizeable>[m
[32m+[m[32m    <option_linux_splash_png>splash.png</option_linux_splash_png>[m
[32m+[m[32m    <option_linux_steam_app_id>0</option_linux_steam_app_id>[m
[32m+[m[32m    <option_linux_sync>false</option_linux_sync>[m
[32m+[m[32m    <option_linux_texture_page>2048</option_linux_texture_page>[m
[32m+[m[32m    <option_loadalpha>255</option_loadalpha>[m
[32m+[m[32m    <option_loadimage>nil</option_loadimage>[m
[32m+[m[32m    <option_loadtransparent>false</option_loadtransparent>[m
[32m+[m[32m    <option_mac_app_category></option_mac_app_category>[m
[32m+[m[32m    <option_mac_app_id></option_mac_app_id>[m
[32m+[m[32m    <option_mac_appstore_incoming_allow>false</option_mac_appstore_incoming_allow>[m
[32m+[m[32m    <option_mac_appstore_outgoing_allow>false</option_mac_appstore_outgoing_allow>[m
[32m+[m[32m    <option_mac_build_version>0</option_mac_build_version>[m
[32m+[m[32m    <option_mac_copyright_info>(c)2012 CompanyName Ltd...</option_mac_copyright_info>[m
[32m+[m[32m    <option_mac_create_app_store>true</option_mac_create_app_store>[m
[32m+[m[32m    <option_mac_display_name>CookieClickerTD</option_mac_display_name>[m
[32m+[m[32m    <option_mac_enable_steam>false</option_mac_enable_steam>[m
[32m+[m[32m    <option_mac_fullscreen>false</option_mac_