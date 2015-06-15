.class public Lorg/slf4j/helpers/NOPMDCAdapter;
.super Ljava/lang/Object;
.source "NOPMDCAdapter.java"

# interfaces
.implements Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCopyOfContextMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 26
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method

.method public setContextMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "contextMap"    # Ljava/util/Map;

    .prologue
    .line 37
    return-void
.end method
