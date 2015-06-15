.class Lorg/videolan/vlc/gui/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$5;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$5;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$6(Lorg/videolan/vlc/gui/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity$5;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/videolan/vlc/gui/MainActivity;->access$7(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 302
    return-void
.end method
