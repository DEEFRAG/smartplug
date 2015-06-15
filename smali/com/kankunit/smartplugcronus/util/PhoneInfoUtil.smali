.class public Lcom/kankunit/smartplugcronus/util/PhoneInfoUtil;
.super Ljava/lang/Object;
.source "PhoneInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAboveVersion3()Z
    .locals 2

    .prologue
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .local v0, "currentapiVersion":I
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 11
    const/4 v1, 0x1

    .line 13
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 22
    return-void
.end method
