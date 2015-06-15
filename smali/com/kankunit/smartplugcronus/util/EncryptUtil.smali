.class public Lcom/kankunit/smartplugcronus/util/EncryptUtil;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v2, "encryption:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v2, "encryption:"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 47
    .local v0, "bytes":[B
    new-instance v2, Lsmartplug/JniC;

    invoke-direct {v2}, Lsmartplug/JniC;-><init>()V

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v1

    .line 48
    .end local v0    # "bytes":[B
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    .line 44
    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v2, Lsmartplug/JniC;

    invoke-direct {v2}, Lsmartplug/JniC;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lsmartplug/JniC;->PackageSendData(Ljava/lang/String;I)[B

    move-result-object v0

    .line 24
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encryption:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 77
    return-void
.end method

.method public static minaDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 52
    .local v0, "bytes":[B
    new-instance v2, Lsmartplug/JniC;

    invoke-direct {v2}, Lsmartplug/JniC;-><init>()V

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method public static minaEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v2, Lsmartplug/JniC;

    invoke-direct {v2}, Lsmartplug/JniC;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lsmartplug/JniC;->PackageSendData(Ljava/lang/String;I)[B

    move-result-object v0

    .line 30
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "s":Ljava/lang/String;
    return-object v1
.end method
