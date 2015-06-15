.class Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity$2;
.super Ljava/lang/Object;
.source "ProtectChargeGuildActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->finish()V

    .line 59
    return-void
.end method
