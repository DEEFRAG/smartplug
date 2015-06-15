.class Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$1;
.super Ljava/lang/Object;
.source "GestureVerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->setUpViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    const-string v2, "KSmartLoginInfo"

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->clearValues(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    const-string v2, "userinfo"

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->clearValues(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    const-class v2, Lcom/kankunit/smartplugcronus/view/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "it":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->finish()V

    .line 99
    return-void
.end method
