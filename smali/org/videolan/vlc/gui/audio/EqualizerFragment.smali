.class public Lorg/videolan/vlc/gui/audio/EqualizerFragment;
.super Landroid/support/v4/app/Fragment;
.source "EqualizerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/EqualizerFragment"


# instance fields
.field private bands_layout:Landroid/widget/LinearLayout;

.field private button:Landroid/widget/ToggleButton;

.field equalizer:[F

.field private equalizer_presets:Landroid/widget/Spinner;

.field libVlc:Lorg/videolan/libvlc/LibVLC;

.field private final mPreampListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mPresetListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private preamp:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    .line 61
    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    .line 184
    new-instance v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;-><init>(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->mPresetListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 206
    new-instance v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment$2;-><init>(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->mPreampListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->preamp:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->bands_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->button:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$3(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer_presets:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$4(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->mPresetListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method private fillViews()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 107
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 108
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 109
    .local v1, "bands":[F
    const/4 v8, 0x0

    .line 111
    .local v8, "presets":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/VLCInstance;->getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v9

    iput-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    .line 112
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v9}, Lorg/videolan/libvlc/LibVLC;->getBands()[F

    move-result-object v1

    .line 113
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v9}, Lorg/videolan/libvlc/LibVLC;->getPresets()[Ljava/lang/String;

    move-result-object v8

    .line 114
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    if-nez v9, :cond_0

    .line 115
    const-string v9, "equalizer_values"

    invoke-static {v7, v9}, Lorg/videolan/vlc/util/Preferences;->getFloatArray(Landroid/content/SharedPreferences;Ljava/lang/String;)[F

    move-result-object v9

    iput-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    .line 116
    :cond_0
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    if-nez v9, :cond_1

    .line 117
    array-length v9, v1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F
    :try_end_0
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    iget-object v11, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->button:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v9}, Lorg/videolan/libvlc/LibVLC;->getEqualizer()[F

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v11, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 125
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->button:Landroid/widget/ToggleButton;

    new-instance v11, Lorg/videolan/vlc/gui/audio/EqualizerFragment$3;

    invoke-direct {v11, p0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment$3;-><init>(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)V

    invoke-virtual {v9, v11}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer_presets:Landroid/widget/Spinner;

    new-instance v11, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const v13, 0x1090009

    invoke-direct {v11, v12, v13, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v9, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 138
    const-string v9, "equalizer_preset"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 139
    .local v4, "equalizer_preset_pref":I
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer_presets:Landroid/widget/Spinner;

    new-instance v11, Lorg/videolan/vlc/gui/audio/EqualizerFragment$4;

    invoke-direct {v11, p0, v4}, Lorg/videolan/vlc/gui/audio/EqualizerFragment$4;-><init>(Lorg/videolan/vlc/gui/audio/EqualizerFragment;I)V

    invoke-virtual {v9, v11}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 148
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->preamp:Landroid/widget/SeekBar;

    const/16 v11, 0x28

    invoke-virtual {v9, v11}, Landroid/widget/SeekBar;->setMax(I)V

    .line 149
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->preamp:Landroid/widget/SeekBar;

    iget-object v11, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    aget v10, v11, v10

    float-to-int v10, v10

    add-int/lit8 v10, v10, 0x14

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 150
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->preamp:Landroid/widget/SeekBar;

    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->mPreampListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 153
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, v1

    if-lt v5, v9, :cond_3

    .line 166
    .end local v4    # "equalizer_preset_pref":I
    .end local v5    # "i":I
    :goto_2
    return-void

    .line 118
    :catch_0
    move-exception v3

    .line 119
    .local v3, "e":Lorg/videolan/libvlc/LibVlcException;
    invoke-virtual {v3}, Lorg/videolan/libvlc/LibVlcException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Lorg/videolan/libvlc/LibVlcException;
    :cond_2
    move v9, v10

    .line 124
    goto :goto_0

    .line 154
    .restart local v4    # "equalizer_preset_pref":I
    .restart local v5    # "i":I
    :cond_3
    aget v0, v1, v5

    .line 156
    .local v0, "band":F
    new-instance v2, Lorg/videolan/vlc/widget/EqualizerBar;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v2, v9, v0}, Lorg/videolan/vlc/widget/EqualizerBar;-><init>(Landroid/content/Context;F)V

    .line 157
    .local v2, "bar":Lorg/videolan/vlc/widget/EqualizerBar;
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    add-int/lit8 v10, v5, 0x1

    aget v9, v9, v10

    invoke-virtual {v2, v9}, Lorg/videolan/vlc/widget/EqualizerBar;->setValue(F)V

    .line 158
    new-instance v9, Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;

    add-int/lit8 v10, v5, 0x1

    invoke-direct {v9, p0, v10}, Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;-><init>(Lorg/videolan/vlc/gui/audio/EqualizerFragment;I)V

    invoke-virtual {v2, v9}, Lorg/videolan/vlc/widget/EqualizerBar;->setListener(Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;)V

    .line 160
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->bands_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    .line 163
    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    .line 162
    invoke-direct {v6, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 164
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v6}, Lorg/videolan/vlc/widget/EqualizerBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private saveViewChildren(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    const v0, 0x7f0701d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->button:Landroid/widget/ToggleButton;

    .line 81
    const v0, 0x7f0701d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer_presets:Landroid/widget/Spinner;

    .line 82
    const v0, 0x7f0701d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->preamp:Landroid/widget/SeekBar;

    .line 83
    const v0, 0x7f0701da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->bands_layout:Landroid/widget/LinearLayout;

    .line 84
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 91
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03006a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 93
    .local v1, "rootView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    invoke-direct {p0, v2}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->saveViewChildren(Landroid/view/View;)V

    .line 97
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->fillViews()V

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 73
    const v1, 0x7f03006a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->saveViewChildren(Landroid/view/View;)V

    .line 76
    return-object v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 171
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->button:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer_presets:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 173
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->preamp:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 174
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->bands_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 176
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 177
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "equalizer_enabled"

    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->button:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v2, "equalizer_values"

    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    invoke-static {v0, v2, v3}, Lorg/videolan/vlc/util/Preferences;->putFloatArray(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;[F)V

    .line 180
    const-string v2, "equalizer_preset"

    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer_presets:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 103
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->fillViews()V

    .line 104
    return-void
.end method
