.class public Lorg/xbill/DNS/SIG0;
.super Ljava/lang/Object;
.source "SIG0.java"


# static fields
.field private static final VALIDITY:S = 0x12cs


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Lorg/xbill/DNS/SIGRecord;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "sig0validity"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    .line 40
    if-gez v0, :cond_0

    .line 41
    const/16 v0, 0x12c

    .line 43
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 44
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 45
    new-instance v5, Ljava/util/Date;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long v0, v1, v6

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    .line 47
    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/DNSSEC;->signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/SIGRecord;

    move-result-object v0

    .line 50
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 51
    return-void
.end method

.method public static verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/KEYRecord;Lorg/xbill/DNS/SIGRecord;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v3

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 69
    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    const/16 v4, 0x18

    if-eq v0, v4, :cond_1

    .line 68
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_1
    aget-object v0, v3, v1

    check-cast v0, Lorg/xbill/DNS/SIGRecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/SIGRecord;->getTypeCovered()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    aget-object v0, v3, v1

    check-cast v0, Lorg/xbill/DNS/SIGRecord;

    .line 76
    :goto_1
    invoke-static {p0, p1, v0, p3, p2}, Lorg/xbill/DNS/DNSSEC;->verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;)V

    .line 77
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method
