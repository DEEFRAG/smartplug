.class Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$4;
.super Ljava/lang/Object;
.source "AccountManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 434
    packed-switch p2, :pswitch_data_0

    .line 458
    :goto_0
    return-void

    .line 436
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 437
    .local v2, "intentFromGallery":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;

    .line 441
    const/4 v5, 0x0

    .line 440
    invoke-virtual {v4, v2, v5}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 444
    .end local v2    # "intentFromGallery":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .line 445
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    .line 444
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v1, "intentFromCapture":Landroid/content/Intent;
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 449
    .local v3, "path":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "faceImage.jpg"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    .local v0, "file":Ljava/io/File;
    const-string v4, "output"

    .line 452
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 450
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 455
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/kankunit/smartplugcronus/view/AccountManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
