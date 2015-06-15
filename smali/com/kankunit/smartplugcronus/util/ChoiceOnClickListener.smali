.class public Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
.super Ljava/lang/Object;
.source "ChoiceOnClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private which:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->which:I

    .line 5
    return-void
.end method


# virtual methods
.method public getWhich()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->which:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 10
    iput p2, p0, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->which:I

    .line 11
    return-void
.end method
