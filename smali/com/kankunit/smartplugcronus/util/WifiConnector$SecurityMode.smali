.class public final enum Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;
.super Ljava/lang/Enum;
.source "WifiConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/util/WifiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

.field public static final enum OPEN:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

.field public static final enum WEP:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

.field public static final enum WPA:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

.field public static final enum WPA2:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;->OPEN:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    new-instance v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    const-string v1, "WEP"

    invoke-direct {v0, v1, v3}, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;->WEP:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    new-instance v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    const-string v1, "WPA"

    invoke-direct {v0, v1, v4}, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;->WPA:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    new-instance v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    const-string v1, "WPA2"

    invoke-direct {v0, v1, v5}, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;->WPA2:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    sget-object v1, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;->OPEN:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;->WEP:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;->WPA:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;->WPA2:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;->ENUM$VALUES:[Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    return-object v0
.end method

.method public static values()[Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;->ENUM$VALUES:[Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
