.class public Lorg/videolan/vlc/gui/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final NAME:Ljava/lang/String; = "VlcSharedPreferences"

.field public static final RESULT_RESCAN:I = 0x2

.field public static final RESULT_RESTART:I = 0x3

.field public static final TAG:Ljava/lang/String; = "VLC/PreferencesActivity"

.field public static final VIDEO_RESUME_TIME:Ljava/lang/String; = "VideoResumeTime"

.field public static final VIDEO_SUBTITLE_FILES:Ljava/lang/String; = "VideoSubtitleFiles"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/PreferencesActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/PreferencesActivity;->restartService(Landroid/content/Context;)V

    return-void
.end method

.method private restartService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/videolan/vlc/audio/AudioService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    .local v0, "service":Landroid/content/Intent;
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/videolan/vlc/audio/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    .line 335
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 338
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/videolan/vlc/audio/AudioServiceController;->bindAudioService(Landroid/content/Context;)V

    .line 339
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/high16 v21, 0x7f050000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->addPreferencesFromResource(I)V

    .line 75
    const-string v21, "directories"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 77
    .local v11, "directoriesPref":Landroid/preference/Preference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$1;

    invoke-direct/range {v21 .. v22}, Lorg/videolan/vlc/gui/PreferencesActivity$1;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    .line 76
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    const-string v21, "screen_orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    .line 90
    .local v15, "screenOrientationPref":Landroid/preference/ListPreference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$2;

    invoke-direct/range {v21 .. v22}, Lorg/videolan/vlc/gui/PreferencesActivity$2;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    const-string v21, "enable_headset_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 104
    .local v6, "checkboxHS":Landroid/preference/CheckBoxPreference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lorg/videolan/vlc/gui/PreferencesActivity$3;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;Landroid/preference/CheckBoxPreference;)V

    .line 103
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    const-string v21, "enable_steal_remote_control"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 115
    .local v7, "checkboxStealRC":Landroid/preference/Preference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$4;

    invoke-direct/range {v21 .. v22}, Lorg/videolan/vlc/gui/PreferencesActivity$4;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    .line 114
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    const-string v21, "enable_black_theme"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 126
    .local v5, "checkboxBlackTheme":Landroid/preference/Preference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$5;

    invoke-direct/range {v21 .. v22}, Lorg/videolan/vlc/gui/PreferencesActivity$5;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    .line 125
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 135
    const-string v21, "clear_history"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 137
    .local v8, "clearHistoryPref":Landroid/preference/Preference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$6;

    invoke-direct/range {v21 .. v22}, Lorg/videolan/vlc/gui/PreferencesActivity$6;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    .line 136
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 160
    const-string v21, "clear_media_db"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 162
    .local v9, "clearMediaPref":Landroid/preference/Preference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$7;

    invoke-direct/range {v21 .. v22}, Lorg/videolan/vlc/gui/PreferencesActivity$7;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    const-string v21, "debug_logs"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 176
    .local v10, "debugLogsPref":Landroid/preference/Preference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$8;

    invoke-direct/range {v21 .. v22}, Lorg/videolan/vlc/gui/PreferencesActivity$8;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 186
    const-string v21, "quit_app"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 188
    .local v14, "quitAppPref":Landroid/preference/Preference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$9;

    invoke-direct/range {v21 .. v22}, Lorg/videolan/vlc/gui/PreferencesActivity$9;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    .line 187
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    const-string v21, "dump_logcat"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 199
    .local v12, "dumpLogcatLog":Landroid/preference/Preference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$10;

    invoke-direct/range {v21 .. v22}, Lorg/videolan/vlc/gui/PreferencesActivity$10;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    .line 198
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 230
    const-string v21, "aout"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 231
    .local v4, "aoutPref":Landroid/preference/ListPreference;
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v21

    if-eqz v21, :cond_2

    const v2, 0x7f0e0013

    .line 232
    .local v2, "aoutEntriesId":I
    :goto_0
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v21

    if-eqz v21, :cond_3

    const v3, 0x7f0e0015

    .line 233
    .local v3, "aoutEntriesIdValues":I
    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 234
    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 235
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_0

    .line 236
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 237
    const-string v21, "2"

    .line 236
    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 240
    :cond_0
    const-string v21, "vout"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    .line 241
    .local v20, "voutPref":Landroid/preference/ListPreference;
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v21

    if-eqz v21, :cond_5

    const v18, 0x7f0e001a

    .line 242
    .local v18, "voutEntriesId":I
    :goto_3
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v21

    if-eqz v21, :cond_6

    const v19, 0x7f0e0018

    .line 243
    .local v19, "voutEntriesIdValues":I
    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 244
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 245
    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_1

    .line 246
    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 248
    :cond_1
    const-string v21, "set_locale"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/EditTextPreference;

    .line 249
    .local v16, "setLocalePref":Landroid/preference/EditTextPreference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$11;

    invoke-direct/range {v21 .. v22}, Lorg/videolan/vlc/gui/PreferencesActivity$11;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    const-string v21, "network_caching"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/EditTextPreference;

    .line 259
    .local v13, "networkCachingPref":Landroid/preference/EditTextPreference;
    new-instance v21, Lorg/videolan/vlc/gui/PreferencesActivity$12;

    invoke-direct/range {v21 .. v22}, Lorg/videolan/vlc/gui/PreferencesActivity$12;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 277
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 278
    .local v17, "sharedPrefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 279
    return-void

    .line 231
    .end local v2    # "aoutEntriesId":I
    .end local v3    # "aoutEntriesIdValues":I
    .end local v13    # "networkCachingPref":Landroid/preference/EditTextPreference;
    .end local v16    # "setLocalePref":Landroid/preference/EditTextPreference;
    .end local v17    # "sharedPrefs":Landroid/content/SharedPreferences;
    .end local v18    # "voutEntriesId":I
    .end local v19    # "voutEntriesIdValues":I
    .end local v20    # "voutPref":Landroid/preference/ListPreference;
    :cond_2
    const v2, 0x7f0e0012

    goto/16 :goto_0

    .line 232
    .restart local v2    # "aoutEntriesId":I
    :cond_3
    const v3, 0x7f0e0014

    goto/16 :goto_1

    .line 238
    .restart local v3    # "aoutEntriesIdValues":I
    :cond_4
    const-string v21, "0"

    goto/16 :goto_2

    .line 241
    .restart local v20    # "voutPref":Landroid/preference/ListPreference;
    :cond_5
    const v18, 0x7f0e001b

    goto :goto_3

    .line 242
    .restart local v18    # "voutEntriesId":I
    :cond_6
    const v19, 0x7f0e0019

    goto :goto_4
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 328
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/audio/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    .line 329
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 302
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 304
    if-eqz p2, :cond_0

    :try_start_0
    instance-of v3, p2, Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    .line 305
    check-cast p2, Landroid/preference/PreferenceScreen;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 306
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 308
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/PreferencesActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 310
    .local v1, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 315
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 322
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/audio/AudioServiceController;->bindAudioService(Landroid/content/Context;)V

    .line 323
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 283
    const-string v0, "hardware_acceleration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const-string v0, "subtitle_text_encoding"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const-string v0, "aout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const-string v0, "vout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    const-string v0, "chroma_format"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string v0, "deblocking"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const-string v0, "enable_frame_skip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const-string v0, "enable_time_stretching_audio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const-string v0, "enable_verbose_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const-string v0, "network_caching"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const-string v0, "dev_hardware_decoder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    invoke-static {p1}, Lorg/videolan/vlc/util/VLCInstance;->updateLibVlcSettings(Landroid/content/SharedPreferences;)V

    .line 295
    invoke-static {p0}, Lorg/videolan/libvlc/LibVLC;->restart(Landroid/content/Context;)V

    .line 297
    :cond_1
    return-void
.end method
