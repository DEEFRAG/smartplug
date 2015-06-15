.class Lcom/kankunit/smartplugcronus/view/TestActivity$6;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/TestActivity;->checkFriendsStatus()V

    .line 175
    return-void
.end method
