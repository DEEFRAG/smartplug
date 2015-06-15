.class public Lsmartplug/JniC;
.super Ljava/lang/Object;
.source "JniC.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "CommunSmartPlug-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native AnalyzeRecvData([BI)Ljava/lang/String;
.end method

.method public native PackageConfigData(Ljava/lang/String;Ljava/lang/String;I)[I
.end method

.method public native PackageSendData(Ljava/lang/String;I)[B
.end method
