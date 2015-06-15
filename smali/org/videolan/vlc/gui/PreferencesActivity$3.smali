.class Lorg/videolan/vlc/gui/PreferencesActivity$3;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/PreferencesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

.field private final synthetic val$checkboxHS:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/PreferencesActivity;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$3;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/PreferencesActivity$3;->val$checkboxHS:Landroid/preference/CheckBoxPreference;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 107
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$3;->val$checkboxHS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/audio/AudioServiceController;->detectHeadset(Z)V

    .line 108
    const/4 v0, 0x1

    return v0
.end method
