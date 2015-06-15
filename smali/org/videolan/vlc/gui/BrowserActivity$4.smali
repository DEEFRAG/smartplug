.class Lorg/videolan/vlc/gui/BrowserActivity$4;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/BrowserActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/BrowserActivity;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/BrowserActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/BrowserActivity$4;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/BrowserActivity$4;->val$input:Landroid/widget/EditText;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 196
    iget-object v2, p0, Lorg/videolan/vlc/gui/BrowserActivity$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/BrowserActivity$4;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    iget-object v3, p0, Lorg/videolan/vlc/gui/BrowserActivity$4;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    const v4, 0x7f0c003f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/videolan/vlc/gui/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/videolan/vlc/util/CustomDirectories;->addCustomDirectory(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lorg/videolan/vlc/gui/BrowserActivity$4;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/BrowserActivity;->refresh()V

    goto :goto_0
.end method
