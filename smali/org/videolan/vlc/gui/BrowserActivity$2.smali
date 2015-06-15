.class Lorg/videolan/vlc/gui/BrowserActivity$2;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/BrowserActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/BrowserActivity;

.field private final synthetic val$item:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/BrowserActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/BrowserActivity$2;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/BrowserActivity$2;->val$item:Ljava/io/File;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 130
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v0

    .line 131
    .local v0, "dbManager":Lorg/videolan/vlc/MediaDatabase;
    invoke-virtual {v0}, Lorg/videolan/vlc/MediaDatabase;->getMediaDirs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    iget-object v2, p0, Lorg/videolan/vlc/gui/BrowserActivity$2;->val$item:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/videolan/vlc/util/CustomDirectories;->removeCustomDirectory(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lorg/videolan/vlc/gui/BrowserActivity$2;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/BrowserActivity;->refresh()V

    .line 137
    const/4 v2, 0x1

    return v2

    .line 131
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 132
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/gui/BrowserActivity$2;->val$item:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/videolan/vlc/MediaDatabase;->removeDir(Ljava/lang/String;)V

    goto :goto_0
.end method
