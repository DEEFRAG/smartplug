.class Lorg/videolan/vlc/gui/PreferencesActivity$5;
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


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$5;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/videolan/vlc/gui/PreferencesActivity$5;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->setResult(I)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method
