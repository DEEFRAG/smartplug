.class Lcom/kankunit/smartplugcronus/view/TestActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field private flag:I

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/view/TestActivity;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 235
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 233
    const/4 v0, 0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$sendMessageThread;->flag:I

    .line 236
    iput p2, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$sendMessageThread;->flag:I

    .line 237
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$sendMessageThread;->flag:I

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TestActivity;->startOperate(I)V

    .line 243
    return-void
.end method
