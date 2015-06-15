.class Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity$2;
.super Ljava/lang/Object;
.source "PushDemoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->setTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;

.field private final synthetic val$textviewGid:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity$2;->this$0:Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity$2;->val$textviewGid:Landroid/widget/EditText;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 194
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity$2;->val$textviewGid:Landroid/widget/EditText;

    .line 195
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/baidupush/Utils;->getTagsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity$2;->this$0:Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/baidupush/PushDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/PushManager;->setTags(Landroid/content/Context;Ljava/util/List;)V

    .line 197
    return-void
.end method
