.class Lorg/videolan/vlc/gui/CommonDialogs$3;
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
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/CommonDialogs$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/videolan/vlc/gui/CommonDialogs$3;->val$dialog:Landroid/app/Dialog;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    new-instance v2, Landroid/content/Intent;

    const-string v4, "org.openintents.action.PICK_FILE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    const-string v4, "org.openintents.extra.TITLE"

    iget-object v5, p0, Lorg/videolan/vlc/gui/CommonDialogs$3;->val$context:Landroid/content/Context;

    const v6, 0x7f0c0065

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v4, "org.openintents.extra.BUTTON_TEXT"

    iget-object v5, p0, Lorg/videolan/vlc/gui/CommonDialogs$3;->val$context:Landroid/content/Context;

    const v6, 0x7f0c0178

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v4, p0, Lorg/videolan/vlc/gui/CommonDialogs$3;->val$context:Landroid/content/Context;

    .line 136
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 138
    const/high16 v5, 0x10000

    .line 137
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 138
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 139
    iget-object v4, p0, Lorg/videolan/vlc/gui/CommonDialogs$3;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const/16 v5, 0xa

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    :goto_0
    iget-object v4, p0, Lorg/videolan/vlc/gui/CommonDialogs$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 156
    return-void

    .line 142
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v3, "intent2":Landroid/content/Intent;
    const-string v4, "*/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v4, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :try_start_0
    iget-object v4, p0, Lorg/videolan/vlc/gui/CommonDialogs$3;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const/16 v5, 0x14

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "VLC/CommonDialogs"

    const-string v5, "No file picker found on system"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v4, p0, Lorg/videolan/vlc/gui/CommonDialogs$3;->val$context:Landroid/content/Context;

    .line 150
    const v5, 0x7f0c0066

    .line 151
    const/4 v6, 0x0

    .line 149
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 151
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
