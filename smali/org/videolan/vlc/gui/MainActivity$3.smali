.class Lorg/videolan/vlc/gui/MainActivity$3;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 6
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # I
    .param p6, "$anonymous4"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$3;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 223
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method
