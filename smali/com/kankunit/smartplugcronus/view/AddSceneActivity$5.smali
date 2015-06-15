.class Lcom/kankunit/smartplugcronus/view/AddSceneActivity$5;
.super Ljava/lang/Object;
.source "AddSceneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->contractContent()V

    .line 482
    return-void
.end method
