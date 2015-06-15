.class Lorg/videolan/vlc/gui/CommonDialogs$4;
.super Ljava/lang/Object;
.source "CommonDialogs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/CommonDialogs;->advancedOptions(Landroid/content/Context;Landroid/view/View;Lorg/videolan/vlc/gui/CommonDialogs$MenuType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Lorg/videolan/vlc/gui/MainActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/CommonDialogs$4;->val$activity:Lorg/videolan/vlc/gui/MainActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/CommonDialogs$4;->val$dialog:Landroid/app/Dialog;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lorg/videolan/vlc/gui/CommonDialogs$4;->val$activity:Lorg/videolan/vlc/gui/MainActivity;

    const-string v1, "equalizer"

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/MainActivity;->showSecondaryFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    .line 165
    iget-object v0, p0, Lorg/videolan/vlc/gui/CommonDialogs$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 166
    return-void
.end method
