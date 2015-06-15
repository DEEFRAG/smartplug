.class Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$8;
.super Ljava/lang/Object;
.source "AccountManagerFragMent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$8;->this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 506
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 507
    return-void
.end method
